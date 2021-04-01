# AceBook

[![Maintainability](https://api.codeclimate.com/v1/badges/2a690f4718c1d5ffe6e2/maintainability)](https://codeclimate.com/github/AJ8GH/acebook-clone/maintainability)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![AJ8GH](https://circleci.com/gh/AJ8GH/acebook-clone.svg?style=shield)](https://app.circleci.com/pipelines/github/AJ8GH/acebook-clone)

## Beta Version

Checkout the beta version of AceBook - deployed here via Heroku and Circle CI:

[AceBook](https://aqueous-thicket-94433.herokuapp.com/)
-------------------------------------------------------

## Getting Started

#### Clone the repository

```shell
git clone https://github.com/jgumoes/acebook-loungin-lizards
```

#### Install dependencies

```shell
cd acebook-loungin-lizards
bundle install
```

#### Set up Database

```
rake db:create
rake db:migrate
```

#### Running test suite

Run tests with rspec:

```shell
bundle exec rspec
```

Add the -fd flag for documentation format:
```shell
bundle exec rspec -fd
```

## Ruby Version

`2.7.2`

## Development Dependencies

```
byebug
capybara (~> 2.13)
devise (~> 4.7)
dotenv
jbuilder (~> 2.5)
jquery-rails (~> 4.4)
listen (>= 3.0.5, < 3.2)
mimemagic (~> 0.3.8)
pg
puma (~> 3.12.6)
rails (~> 6.0.0)
rspec-rails (~> 4.0)
rspec_junit_formatter
rubocop
rubocop-rails
sass-rails (~> 5.1.0)
selenium-webdriver
simplecov
therubyracer
tzinfo-data
uglifier (>= 1.3.0)
web-console (>= 3.3.0)
```

[You can find the engineering project outline here.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

Planning:

[Miro board mock up](https://miro.com/app/board/o9J_lN6jG0E=/)

![mock-up](style-mockup.png)
