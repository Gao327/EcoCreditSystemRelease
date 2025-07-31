#!/bin/bash

# EcoCredit User Start Script
echo "🌱 EcoCredit User Start"
echo "======================="

# Check prerequisites
echo "🔍 Checking prerequisites..."

if ! command -v java >/dev/null 2>&1; then
    echo "❌ Java not found. Please install Java 17 or higher."
    exit 1
fi

if ! command -v node >/dev/null 2>&1; then
    echo "❌ Node.js not found. Please install Node.js 18 or higher."
    exit 1
fi

echo "✅ Prerequisites check passed"

# Kill existing processes
echo "🧹 Cleaning up existing processes..."
pkill -f "java -jar.*ecocredit" 2>/dev/null || true
pkill -f "expo start" 2>/dev/null || true
pkill -f "node.*server.js" 2>/dev/null || true

# Start backend
echo "🚀 Starting EcoCredit Backend..."
java -jar bin/ecocredit-backend-1.0.0.jar &
BACKEND_PID=$!

# Wait for backend to start
echo "⏳ Waiting for backend to be ready..."
for i in {1..30}; do
    if curl -s http://localhost:8080/api/health > /dev/null 2>&1; then
        echo "✅ Backend is ready!"
        break
    fi
    echo "⏳ Waiting... ($i/30)"
    sleep 2
done

# Start web app server
echo "🌐 Starting Web App Server..."
cd web
node -e "
const http = require('http');
const fs = require('fs');
const path = require('path');
const url = require('url');

const PORT = 8081;

const mimeTypes = {
    '.html': 'text/html',
    '.css': 'text/css',
    '.js': 'application/javascript',
    '.json': 'application/json',
    '.png': 'image/png',
    '.jpg': 'image/jpeg',
    '.gif': 'image/gif',
    '.svg': 'image/svg+xml',
    '.ico': 'image/x-icon'
};

const server = http.createServer((req, res) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    
    if (req.method === 'OPTIONS') {
        res.writeHead(200);
        res.end();
        return;
    }
    
    let pathname = url.parse(req.url).pathname;
    
    if (pathname === '/') {
        pathname = '/app-with-auth.html';
    }
    
    const filePath = path.join(__dirname, pathname);
    
    fs.readFile(filePath, (err, data) => {
        if (err) {
            res.writeHead(404, {'Content-Type': 'text/html'});
            res.end('<h1>404 - File Not Found</h1>');
            return;
        }
        
        const ext = path.extname(filePath);
        const contentType = mimeTypes[ext] || 'text/plain';
        
        res.writeHead(200, {'Content-Type': contentType});
        res.end(data);
    });
});

server.listen(PORT, () => {
    console.log(\`🌐 EcoCredit Web App running on http://localhost:\${PORT}\`);
    console.log(\`📱 Direct access: http://localhost:\${PORT}/app-with-auth.html\`);
});
" &
WEB_SERVER_PID=$!
cd ..

# Wait for web server to start
echo "⏳ Waiting for web app server to be ready..."
for i in {1..10}; do
    if curl -s http://localhost:8081 > /dev/null 2>&1; then
        echo "✅ Web app server is ready!"
        break
    fi
    echo "⏳ Waiting... ($i/10)"
    sleep 1
done

echo ""
echo "🎉 EcoCredit is now running!"
echo ""
echo "📊 System Status:"
echo "   ✅ Backend API: http://localhost:8080/api/health"
echo "   ✅ Web App: http://localhost:8081/app-with-auth.html"
echo ""
echo "🔗 Quick Access:"
echo "   🌐 Web Interface: http://localhost:8081"
echo "   📊 API Health Check: http://localhost:8080/api/health"
echo "   🎮 Database Console: http://localhost:8080/h2-console"
echo ""
echo "💡 Usage Tips:"
echo "   - Web app runs on port 8081"
echo "   - Backend API runs on port 8080"
echo "   - Both apps share the same backend data"
echo ""
echo "🛑 To stop everything:"
echo "   - Press Ctrl+C to stop this script"
echo "   - Or run: ./stop-all.sh"
echo ""

# Function to cleanup on exit
cleanup() {
    echo ""
    echo "🛑 Shutting down services..."
    kill $BACKEND_PID 2>/dev/null
    kill $WEB_SERVER_PID 2>/dev/null
    pkill -f "java -jar.*ecocredit" 2>/dev/null || true
    pkill -f "node.*server.js" 2>/dev/null || true
    echo "✅ All services stopped"
}

# Set trap to cleanup on script exit
trap cleanup EXIT INT TERM

# Keep script running
echo "Press Ctrl+C to stop all services..."
wait $BACKEND_PID
