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

## 🔧 **Git History Management**

### Rewrite History from a Specific Commit

To clean up git history and remove all commits before a specific commit:

```bash
# 1. Create backup for safety
git branch backup-full-history

# 2. Create new orphan branch from target commit
git checkout --orphan new-master <target-commit-hash>
git commit -m "Initial commit from <target-commit-hash>"

# 3. Cherry-pick all commits after target commit
git cherry-pick <target-commit-hash>..backup-full-history

# 4. Replace master branch
git branch -D master
git branch -m new-master master

# 5. Force push (⚠️ WARNING: This rewrites history!)
git push origin master --force
```

**Example**: Remove all commits before `a0c6024db69c8414adcbfcbea3c9b6723cd05d0c`
```bash
git branch backup-full-history
git checkout --orphan new-master a0c6024db69c8414adcbfcbea3c9b6723cd05d0c
git commit -m "Initial commit from a0c6024"
git cherry-pick a0c6024..backup-full-history
git branch -D master
git branch -m new-master master
git push origin master --force
```

⚠️ **Important Notes:**
- This rewrites git history completely
- Creates a backup branch automatically

---
```
ifconfig | grep inet
```