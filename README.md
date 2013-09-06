# HatCMS

The goal: a CMS that sucks less than Wordpress. Themes should be easy to develop. The engine itself should not be a black box. 

It's called HatCMS because of the Sinatra hat.

Sinatra is used because it's incredibly easy to pick up, making HatCMS very extendable with minimal effort.

HatCMS is friendly to new developers. There's a lot of in-line documentation, 

I think the MVC pattern is great, so we're using it. EOD.

# Installation
---
## Dependencies
- Ruby 2.0.X
- MongoDB
- Bundler

## Instructions
Install MongoDB if you haven't already, then clone this repo down and run `bundle install`.

# Usage
---
`cd path/to/project/directory`
`ruby hat.rb`
Visit localhost:4567



#TODOs
- Return posts as JSON (/post/:url/json)
- Users + sessions
- Database authentication (located in config and should read from environment variables - auth in source control == BAD)
- Development + Deployment settings
- Setup script
- Redis cache pages
- Set caching on posts
- (Good) default search
- CLI for generating new skeletons
- MSI (?)
- Web interface for setup
- Thin + Unicorn instead of shitty WEBrick
- Custom 404 instead of default Sinatra


# User Stories
As a business owner, I need to update small portions of my site with relevant information, so that I can keep my website current. It needs to be easy, and cannot allow me to break my website.  I should also be able to blog, with the ability to use tags.  Pretty URLs should be available, as well as the ability to browse archives by tag and date. 

As a developer, I need to give my clients a way to update their websites without breaking them.  It needs to get out of my way as a front-end developer, meaning no stupid inserted markup.  Templating should be easy and not require any programming logic.  "Widgets" and plugins are not necessary, though templates should include the capacity for repeatable elements (such as entries in a photo gallery).

