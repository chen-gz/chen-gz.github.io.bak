---
title: HUGO setup
date: 2022-05-05
---

## Build Hugo

The default Hugo release does not satisfy my requirement. I want it to support pandoc with TOC (table of content) and extensions. Because pandoc has better math formula support.

~~~ sh
git clone https://github.com/chen-gz/hugo
go build --tag extend
~~~

We need Hugo to support pandoc because pandoc support math formula much better than default render.

Second, we need extensions. So we need to build huge with parameter `go build --tag extend` . This will make Hugo support extensions.

## Docker

I deploy my blog in GitLab. So I need to set up docker for Hugo in order to automatically build the website.

The docker file is shown as the following block.

~~~ dockerfile
FROM pandoc/ubuntu
RUN apt update && apt -y install hugo
ENTRYPOINT [""]
~~~

## Content Organize

Just put an empty file `_index.md` in the folders under `content` folder.



