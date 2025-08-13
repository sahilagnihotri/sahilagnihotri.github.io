# How to build (for maintenance)

```sh
# Install Hugo if needed
brew install hugo

# 🚀 Development mode (starts server accessible from other devices)
./build_script.sh debug

# 📦 Production builds (generates both GitHub Pages & personal server)
./build_script.sh release

# 🧹 Full clean rebuild
rm -rf resources/ public/ public-website/ && ./build_script.sh release

# Alternative: Manual Hugo commands
# Development server
hugo server --disableFastRender --noHTTPCache --cleanDestinationDir

# Build for GitHub Pages only
hugo --minify

# Build for personal server only
hugo --minify --destination public-website --baseURL "https://sahil.agnihotri.se/"
```

# Build System

## 🎯 **Enhanced Build Script Modes**

| Command | Mode | Description |
|---------|------|-------------|
| `./build_script.sh debug` | Development | Starts Hugo server on `0.0.0.0:1313` for cross-device testing |
| `./build_script.sh release` | Production | Builds both GitHub Pages & personal server versions |
| `./build_script.sh` | Default | Same as `release` mode |

## 📁 **Output Structure**
- **GitHub Pages**: Built to `public/` with baseURL `https://sahilagnihotri.github.io/`
- **Personal Server**: Built to `public-website/` with baseURL `https://sahil.agnihotri.se/`
- **Configuration**: Uses single `hugo.toml` file with command-line overrides

## 🌐 **Debug Mode Features**
- Live reload enabled
- Accessible from any device on your network
- Auto-displays local and network URLs
- Optimized for development (no caching, fast render disabled)

---

ifconfig | grep inet