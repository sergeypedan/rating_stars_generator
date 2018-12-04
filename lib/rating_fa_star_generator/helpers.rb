# frozen_string_literal: true

module Helpers

  module_function

  def mark_valid?(mark)
    return false unless mark
    fail ArgumentError, "rating mark must be a Numeric, received #{mark.inspect}" unless mark.is_a? Numeric
    return false if mark.zero?
    true
  end

  def distribution(mark)
    mark_floor = mark.floor
    difference = (mark - mark_floor)
    full_stars = (difference > 0.75) ? mark.ceil : mark_floor
    half_stars = (0.25..0.75).cover?(difference) ? 1 : 0
    {
      full:  full_stars,
      half:  half_stars,
      empty: (5 - full_stars - half_stars)
    }
  end

end
