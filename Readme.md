# How to build (for maintainance)

```sh
# Development
brew install hugo
hugo server
# For full rebuilds
rm -rf resources/ public/ && hugo --minify

hugo server --disableFastRender --noHTTPCache --cleanDestinationDir
hugo --cleanDestinationDir

# Build for production (minified)
hugo --minify
```


# Config changes

```
 Change base url commented line in hugo.toml depending on if building for github pages or for own server.
```

---

ifconfig | grep inet