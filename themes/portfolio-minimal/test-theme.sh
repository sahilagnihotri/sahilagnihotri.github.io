#!/bin/bash
# Portfolio Minimal Theme Test Script

echo "🚀 Starting Portfolio Minimal Theme Testing..."

# 1. Basic setup validation
echo "📋 Checking Hugo version..."
hugo version

# 2. Build test
echo "🔨 Testing build..."
hugo --dry-run

# 3. Local server test
echo "🌐 Starting local server..."
hugo server --port 1314 &
SERVER_PID=$!
sleep 5

# 4. Basic connectivity test
echo "🔍 Testing local connectivity..."
curl -f http://localhost:1314/ > /dev/null && echo "✅ Local server responding" || echo "❌ Local server failed"

# 5. Production build test
echo "📦 Testing production build..."
hugo --minify --cleanDestinationDir

# 6. Cleanup
kill $SERVER_PID
echo "✅ Testing complete!"