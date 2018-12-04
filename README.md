# Rating stars generator

[![Gem Version](https://badge.fury.io/rb/rating_stars_generator.svg)](http://badge.fury.io/rb/rating_stars_generator)
[![Maintainability](https://api.codeclimate.com/v1/badges/f5a42276aa034ee10945/maintainability)](https://codeclimate.com/github/sergeypedan/rating_stars_generator/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f5a42276aa034ee10945/test_coverage)](https://codeclimate.com/github/sergeypedan/rating_stars_generator/test_coverage)

<!-- Tocer[start]: Auto-generated, don't remove. -->

## Table of Contents

  - [Features](#features)
  - [Requirements](#requirements)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Tests](#tests)
  - [Credits](#credits)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

## Features

Generates rating stars compatible with FontAwesome v.4

## Requirements

1. [Ruby 2.5.1](https://www.ruby-lang.org)

## Setup

Add the following to your Gemfile:

```ruby
gem "rating_stars_generator"
```

## Usage

Core usage:

```ruby
RatingStarssGenerator.new(mark).html
```

It will be convenient to wrap it in a view helper:

```ruby
# app/helpers/rating_helper.rb
require "rating_starss_generator"

module RatingHelper
  def rating_stars_html(mark)
    RatingStarssGenerator.new(mark).html
  end
end
```

```ruby
# app/views/restaurants/show.html.erb
<%= rating_stars_html(@restaurant.rating) %>
```

## Tests

To test, run:

```sh
bundle exec rake
```

## Credits

Developed by [Sergey Pedan](http://sergeypedan.ru) at [Integral Design](http://integral-design.ru).
