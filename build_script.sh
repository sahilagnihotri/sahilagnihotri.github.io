#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Default mode
MODE="${1:-release}"

show_usage() {
    echo -e "${BLUE}📖 Hugo Build Script Usage:${NC}"
    echo ""
    echo -e "${YELLOW}./build_script.sh debug${NC}    - Start development server on all interfaces"
    echo -e "${YELLOW}./build_script.sh release${NC}  - Build for production (both GitHub Pages & personal server)"
    echo ""
    echo -e "${BLUE}Debug Mode:${NC}"
    echo "  • Starts Hugo server with live reload"
    echo "  • Accessible from other devices on network (0.0.0.0:1313)"
    echo "  • Uses GitHub Pages baseURL for testing"
    echo ""
    echo -e "${BLUE}Release Mode:${NC}"
    echo "  • Builds minified production sites"
    echo "  • Output: public/ (GitHub Pages) + public-website/ (personal server)"
    echo ""
}

if [ "$MODE" = "debug" ]; then
    echo -e "${BLUE}🚀 Starting Hugo development server...${NC}"
    echo -e "${YELLOW}📡 Server will be accessible on all network interfaces${NC}"
    echo -e "${YELLOW}💻 Local: http://localhost:1313${NC}"
    echo -e "${YELLOW}🌐 Network: http://$(hostname -I | awk '{print $1}'):1313${NC}"
    echo ""
    echo -e "${GREEN}Press Ctrl+C to stop the server${NC}"
    echo ""
    
    hugo server --port 1313 --bind 0.0.0.0 --disableFastRender --noHTTPCache --cleanDestinationDir

elif [ "$MODE" = "release" ]; then
    echo -e "${BLUE}🔨 Building Hugo sites for production deployment...${NC}"
    
    # Build for GitHub Pages
    echo -e "${BLUE}📦 Building for GitHub Pages...${NC}"
    hugo --minify --config hugo.toml
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ GitHub Pages build completed -> public/${NC}"
    else
        echo -e "${RED}❌ GitHub Pages build failed${NC}"
        exit 1
    fi
    
    # Build for personal server
    echo -e "${BLUE}🌐 Building for personal server (sahil.agnihotri.se)...${NC}"
    hugo --minify --config hugo.toml --destination public-website --baseURL "https://sahil.agnihotri.se/"
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Personal server build completed -> public-website/${NC}"
    else
        echo -e "${RED}❌ Personal server build failed${NC}"
        exit 1
    fi
    
    echo ""
    echo -e "${GREEN}🎉 Both builds completed successfully!${NC}"
    echo -e "${BLUE}📁 GitHub Pages: public/${NC}"
    echo -e "${BLUE}📁 Personal Server: public-website/${NC}"
    echo ""
    echo -e "${YELLOW}💡 Next steps:${NC}"
    echo "   • Deploy public/ to GitHub Pages"
    echo "   • Deploy public-website/ to sahil.agnihotri.se"

else
    echo -e "${RED}❌ Unknown mode: $MODE${NC}"
    echo ""
    show_usage
    exit 1
fi