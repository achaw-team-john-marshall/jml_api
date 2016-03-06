## README

Things we want to cover:

- [ ] Ruby version

- [ ] System dependencies

- [ ] Configuration

- [ ] Database creation

- [ ] Database initialization

- [ ] How to run the test suite

- [ ] Services (job queues, cache servers, search engines, etc.)

- [ ] Deployment instructions

## Introduction

This application was built as two conceptually seperate components
- A [rails-api](https://github.com/rails-api/rails-api) backend
- A [yeoman-angular](https://github.com/yeoman/generator-angular) based frontend

This application is based heavily off the tutorial [How to Wire up Ruby on Rails and AngularJS as a Single-Page Application](http://www.angularonrails.com/ruby-on-rails-angularjs-single-page-application/). From here on it will be assumed that you have read and fully understood this article.

Notable points of deviation from this article include
- `yo angular:factory <some_factory>` to generate the our resource factories
- Exclude puma from development environment or gurnt-proxy pass will not work

## So what's going on here?

  #### Development environment
When working on the application locally, use grunt to serve the pages into your web-browser with grunts server. Be sure to **run all grunt, bower, npm etc. commands inside `client/`**

`grunt serve --force`

  *The `--force` option is required because of how we have configured the grunt proxy server. If [this](https://coderwall.com/p/i1bg2q/creating-a-force-task-in-grunt) annoys you.*

The rails server is then run to pass data into the grunt server via grunt_connect_proxy.

`rails serve`

##### Diagram:
```
rails<--[:3000/api]-->grunt_connect_proxy<--[:9000/api]-->grunt_serve
                                                                   /\
      _                _                                  _        |    
   __| | _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_      |
  / _` |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|     |
 | (_| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_   [:9000/*]
  \__,_|\___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|     |
                              |_|                                  |
                                                                   \/
                                                                web_browser
```

Grunt_connect_proxy is configured in client/gruntfile.js. It is currently configured so that any request beginning  `/api` will be passed by grunt_connect_proxy through to rails.

#### Production environment

In production all requests are handled by rails. All of the static assest that were being served by grunt in development are now in the `public/` directory. A look at `config/routes.rb` will show that only `/api` routes are mapped to any controller methods while everything else is just served from `public/`. Grunt is configured so that running
```
grunt build --force
```
will compile all of the relevant html, css, and js files from `client/app/` into `public/`. This means that any changes inside of the `client/` folder will not
reflected in the deployed application unless `grunt build --force` is run and the changes are committed to git. This can be verified before pushing to heroku by attempting to browse the site locally using only the rails server.
