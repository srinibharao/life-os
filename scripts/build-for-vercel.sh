#!/bin/bash

echo "🔨 Building React app for production..."
cd /app/frontend

# Clean previous build
rm -rf build

# Build the app
yarn build

if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo ""
    echo "📦 Build files are in /app/frontend/build/"
    echo ""
    echo "To test the production build locally, run:"
    echo "  cd /app/frontend"
    echo "  npx serve -s build -p 3000"
    echo ""
    echo "Then open http://localhost:3000 in your browser"
else
    echo "❌ Build failed. Check the errors above."
    exit 1
fi
