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

(this will also install "[font-awesome-rails](https://github.com/bokmann/font-awesome-rails)", "~> 4.7" gem)

Import Font-Awesome to your CSS, for example `application.sass`

```sass
@import "font-awesome"
```

## Usage

### Core usage

```ruby
RatingStarsGenerator.new(3.5).html
```

which would produce

```html
<div class="rating-stars" data-rating="4.8">
  <i class="fa fa-star"></i>
  <i class="fa fa-star"></i>
  <i class="fa fa-star"></i>
  <i class="fa fa-star-half-o"></i>
  <i class="fa fa-star-o"></i>
</div>
```

### Via helper

It will be convenient to wrap it in a view helper:

```ruby
# app/helpers/rating_helper.rb
require "rating_starss_generator"

module RatingHelper
  def rating_stars_html(mark)
    RatingStarsGenerator.new(mark).html
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
