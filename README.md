# Rating Fa Star Generator

[![Gem Version](https://badge.fury.io/rb/rating_fa_star_generator.svg)](http://badge.fury.io/rb/rating_fa_star_generator)

<!-- Tocer[start]: Auto-generated, don't remove. -->

## Table of Contents

  - [Features](#features)
  - [Screencasts](#screencasts)
  - [Requirements](#requirements)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Tests](#tests)
  - [Versioning](#versioning)
  - [Code of Conduct](#code-of-conduct)
  - [Contributions](#contributions)
  - [License](#license)
  - [History](#history)
  - [Credits](#credits)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

## Features

Generates rating stars compatible with FontAwesome v.4

## Requirements

1. [Ruby 2.5.1](https://www.ruby-lang.org)

## Setup

Add the following to your Gemfile:

```ruby
gem "rating_fa_star_generator"
```

## Usage

Core usage:

```ruby
RatingFaStarsGenerator.new(mark).html
```

It will be convenient to wrap it in a view helper:

```ruby
# app/helpers/rating_helper.rb
require "rating_fa_stars_generator"

module RatingHelper
  def rating_stars_html(mark)
    RatingFaStarsGenerator.new(mark).html
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
