# frozen_string_literal: true

$LOAD_PATH.append File.expand_path("lib", __dir__)
require "rating_fa_star_generator/identity"

Gem::Specification.new do |spec|
  spec.name = RatingFaStarGenerator::Identity.name
  spec.version = RatingFaStarGenerator::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Sergey Pedan"]
  spec.email = ["sergey.pedan@gmail.com"]
  spec.homepage = ""
  spec.summary = ""
  spec.license = "MIT"

  spec.metadata = {
    "source_code_uri" => "",
    "changelog_uri" => "/blob/master/CHANGES.md",
    "bug_tracker_uri" => "/issues"
  }


  spec.required_ruby_version = "~> 2.5"
  spec.add_development_dependency "bundler-audit", "~> 0.6"
  spec.add_development_dependency "gemsmith", "~> 12.4"
  spec.add_development_dependency "git-cop", "~> 2.2"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "pry-byebug", "~> 3.5"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "reek", "~> 5.0"
  spec.add_development_dependency "rspec", "~> 3.8"
  spec.add_development_dependency "rubocop", "~> 0.60"
  spec.add_development_dependency "rubocop-rspec", "~> 1.30"

  spec.files = Dir["lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths = ["lib"]
end
