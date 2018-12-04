# frozen_string_literal: false

require_relative "rating_stars_generator/identity"
require_relative "rating_stars_generator/helpers"

class RatingStarsGenerator

  include Helpers

  def initialize(mark, css_class: "rating-stars", data: true, wrapper_tag: "span")
    @mark = mark
    @css_class = css_class
    @data = data
    @wrapper_tag = wrapper_tag
  end

  def html
    return unless mark_valid?(@mark)
    counts = distribution(@mark)
    prepare_html(counts)
  end

  private

  def prepare_html(counts)
    html = "<#{@wrapper_tag} class=\"#{@css_class}\"#{data_attribute}>"
      counts[:full].times  { html << "<i class=\"fa fa-star\"></i>" }
      counts[:half].times  { html << "<i class=\"fa fa-star-half-o\"></i>" }
      counts[:empty].times { html << "<i class=\"fa fa-star-o\"></i>" }
    html << "</#{@wrapper_tag}>"
    html
  end

  def data_attribute
    " data-raring=\"#{@mark.round(1)}\"" if @data
  end

end
