# How to build (for maintenance)

```sh
# Install Hugo if needed
brew install hugo


# Development (GitHub Pages baseURL)
hugo server --disableFastRender --noHTTPCache --cleanDestinationDir

# Development (your own server baseURL)
hugo server --disableFastRender --noHTTPCache --cleanDestinationDir --config hugo.toml,baseurl.server.toml

# For Deployment full rebuilds (GitHub Pages baseURL)
rm -rf resources/ public/ && hugo --minify

# For Deployment full rebuilds (your own server baseURL)
rm -rf resources/ public/ && hugo --minify --config hugo.toml,baseurl.server.toml

# Build for production (GitHub Pages)
hugo --minify

# Build for production (your own server)
hugo --minify --config hugo.toml,baseurl.server.toml
```

# Config changes

- The main config is `hugo.toml` (for GitHub Pages, with baseURL set to https://sahilagnihotri.github.io/).
- To build for your own server, use the override file `baseurl.server.toml` (with baseURL set to https://sahil.agnihotri.se/).
- All other settings are shared.

---

ifconfig | grep inet