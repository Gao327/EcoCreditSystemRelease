#!/bin/bash

echo "🛑 Stopping all EcoCredit services..."

# Kill backend
pkill -f "java -jar.*ecocredit" 2>/dev/null || true

# Kill web server
pkill -f "node.*server.js" 2>/dev/null || true

# Kill mobile app
pkill -f "expo start" 2>/dev/null || true

echo "✅ All services stopped"
