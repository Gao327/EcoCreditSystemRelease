#!/bin/bash

echo "=== SYSTEM STATUS ==="
echo "Backend API:"
curl -s http://localhost:8080/api/health 2>/dev/null || echo "Not responding"
echo ""
echo "Web App:"
curl -s -o /dev/null -w "HTTP %{http_code}" http://localhost:8081 2>/dev/null || echo "Not responding"
echo ""
