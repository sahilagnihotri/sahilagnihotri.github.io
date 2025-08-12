# How to build (for maintainance)

```sh
# Development
brew install hugo
hugo server
# For full rebuilds
hugo server --disableFastRender
hugo --cleanDestinationDir

# Build for production (minified)
hugo --minify
```


---

ifconfig | grep inet