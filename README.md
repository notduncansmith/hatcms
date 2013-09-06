# HatCMS

The goal: a CMS that sucks less than Wordpress. Themes should be easy to develop. The engine itself should not be a black box. 

It's called HatCMS because of the Sinatra hat.

Sinatra is used because it's incredibly easy to pick up, making HatCMS very extendable with minimal effort.

HatCMS is friendly to new developers. There's a lot of in-line documentation, 

I think the MVC pattern is great, so we're using it. EOD. I'm also a fan of the repository pattern, because it keeps the controllers from having to handle data-access-layer boilerplate nastiness.


# Installation

## Dependencies
- Ruby 2.0.X
- MongoDB
- Bundler

## Instructions
Install MongoDB if you haven't already, then clone this repo down and run `bundle install`.

# Usage

`cd path/to/project/directory`

`ruby hat.rb`

Visit localhost:4567



#TODOs

These are in no particular order.  * denotes high-priority tasks.


- * Users + sessions (name, email, password, additional custom fields defined by theme)
- * All pages (title + permalink) should be available in templates + layouts (for nav bars and such)
- * Page controller + repository
- * Theme support
- * Tag support in interface
- * Make UI not suck (use Foundation 4 please)
- * Ability to use post excerpts in pages
- * New post validation (title + body required)
- Sass support (it's not explicitly *not* supported, but a scss folder with a config.rb would be nice)
- Support JSON for posts (/post/:url/json)
- Database authentication (located in config.yml and should read from environment variables)
- Development + Deployment settings
- Redis cache for pages (should update cache on page update)
- Manual caching on posts (checkbox in UI, checked by default)
- (Good) default search
- Setup script
- MSI (?)
- Web UI for setup (akin to Wordpress)
- Thin + Unicorn instead of shitty WEBrick
- Custom 404 instead of default Sinatra error page


# User Stories
As an end user (site administrator, business owner, other non-technical person), I need to update small portions of my site with relevant information, so that I can keep my website current with zero developer skills. It needs to be easy, and cannot allow me to break my website. I should also be able to blog, with the ability to use tags. Pretty URLs should be available, as well as the ability to browse archives by tag and date. 
---
As a developer, I need to give my clients a way to update their websites without breaking them. It needs to get out of my way as a developer, meaning no stupid inserted markup. Templating should be easy and use (at most) Mustache-level logic. "Widgets" and plugins are not necessary, though templates should include the capacity for repeatable elements (such as entries in a photo gallery or company bios).

# Pull Requests

I'm happily accepting pull requests, I just ask that
A) New features satisfy a current TODO or support user stories (if feature is not a TODO, make an issue first)
B) You use in-line documentation via comments to explain what's going on. I want this project to be very friendly to new developers, the inner workings of HatCMS should not be a "black box" that developers are afraid to tinker with.
C) You use 2-space indentation, using spaces (Sublime's default is 4-space tabbed indentation).

