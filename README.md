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

*guys lets fill in all the gotchas here*
