---
title: Assignment1
author: Sahil Agnihotri
draft: false
layout: single_withfooter
---

# Assignment1

## Code sample:

```bash
Sample code heres

```

## `hugo.yaml` (the config file)

For this example site, I defined permalinks for two sections, `post` and `note`, so that the links to pages under these directories will contain the date info, e.g., `https://xmin.yihui.org/post/2016/02/14/a-plain-markdown-post/`. This is optional, and it is up to your personal taste of URLs.

```yaml
permalinks:
  note: "/note/:year/:month/:day/:slug/"
  post: "/post/:year/:month/:day/:slug/"
```
---