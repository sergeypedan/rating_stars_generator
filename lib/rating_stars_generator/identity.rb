# frozen_string_literal: true

module RatingStarsGenerator
  # Gem identity information.
  module Identity
    def self.name
      "rating_stars_generator"
    end

    def self.label
      "Rating stars generator"
    end

    def self.version
      "0.1.0"
    end

    def self.version_label
      "#{label} #{version}"
    end
  end
end
