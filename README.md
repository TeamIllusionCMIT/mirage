# 🔗 mirage
*a fast, simple link shortener written in v*
\
very cool and inspirational link shortener. uses json to store links.

## 🏝️ get started
(make sure you install [v](https://vlang.io) first) \

to run your own instance, fork this repo and edit `links.json` to your liking. build with `v .` (use `v . -prod` for production), and run the executable.

## 🌐 about `links.json`
`links.json` is a json file that stores all the links.  here is an example of a proper `links.json` object:
```json
{
    "slug": "url",
    "gh": "https://github.com/thrzl",
    ...
}
```