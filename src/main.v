module main

import x.vweb
import os
import json

pub struct Link {
	slug string
	url string
}

pub struct App {
pub:
    links map[string]string
}

pub struct Context {
    vweb.Context
}

@['/:slug'; GET]
pub fn (app &App) redirect(mut ctx Context, slug string) vweb.Result {
	if slug in app.links {
			return ctx.redirect(app.links[slug])
		}
	return ctx.text('Not found')
}

pub fn (app &App) index(mut ctx Context) vweb.Result {
    return ctx.text('hello!\n\nthis user is running a mirage instance\n\nhttps://github.com/teamillusioncmit/mirage')
}

fn main() {
	file_contants := os.read_file("links.json")!
	links := json.decode(map[string]string, file_contants)!
    mut app := &App{
        links,
    }
	println("[i] loaded ${links.len} links")
    vweb.run[App, Context](mut app, 8080)
}
