# frozen_string_literal: true

require "rating_fa_star_generator/identity"

class RatingFaStarsGenerator < ActionView::Base

  include FontAwesome::Rails::IconHelper

  def initialize(mark, css_class: "rating-stars", data: true)
    @mark = mark
    @css_class = css_class
    @data = data
  end

  def html
    return unless Helpers::mark_valid?(@mark)
    counts = Helpers::distribution(mark)
    prepare_html(counts)
  end

  private

  def prepare_html(counts)
    tag.span class: @css_class, data: html_data do
       counts[:full].times { concat fa_icon("star") }
       counts[:half].times { concat fa_icon("star-half-o") }
      counts[:empty].times { concat fa_icon("star-o") }
    end
  end

  def html_data
    { rating: @mark.round(1) } if @data
  end

end
