# frozen_string_literal: true

require "spec_helper"

RSpec.describe RatingStarsGenerator do

  subject { described_class.new(mark).html }

  context "`mark` is nil" do
    let(:mark) { nil }
    it { is_expected.to be_nil }
  end

  context "`mark` is an empty string" do
    let(:mark) { "" }
    it { is_expected.to be_nil }
  end

  context "`mark` is an arbitrary string" do
    let(:mark) { "An arbitrary string" }
    it "raises exception" do
      expect { subject }.to raise_exception(ArgumentError)
    end
  end

  context "`mark` is a strigified integer" do
    let(:mark) { "5" }
  end

  context "`mark` is an integer" do

    context "`mark` is -3" do
      let(:mark) { -3 }
      it "raises exception" do
        expect { subject }.to raise_exception(ArgumentError)
      end
    end

    context "`mark` is 0" do
      let(:mark) { 0 }
      it { is_expected.to be_nil }
    end

    context "`mark` is 1" do
      let(:mark) { 1 }
      it { is_expected.to eq "<span class=\"rating-stars\" data-raring=\"1\"><i class=\"fa fa-star\"></i><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star-o\"></i></span>" }
    end

    context "`mark` is 2" do
      let(:mark) { 2 }
      it { is_expected.to eq "<span class=\"rating-stars\" data-raring=\"2\"><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star-o\"></i></span>" }
    end

    context "`mark` is 3" do
      let(:mark) { 3 }
      it { is_expected.to eq "<span class=\"rating-stars\" data-raring=\"3\"><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star-o\"></i><i class=\"fa fa-star-o\"></i></span>" }
    end

    context "`mark` is 4" do
      let(:mark) { 4 }
      it { is_expected.to eq "<span class=\"rating-stars\" data-raring=\"4\"><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star-o\"></i></span>" }
    end

    context "`mark` is 5" do
      let(:mark) { 5 }
      it { is_expected.to eq "<span class=\"rating-stars\" data-raring=\"5\"><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i><i class=\"fa fa-star\"></i></span>" }
    end

    context "`mark` is 23" do
      let(:mark) { 23 }
    end

  end

  context "`mark` is a float" do

    context "`mark` is -5.2" do
      let(:mark) { -5.2 }
    end

    context "`mark` is 0.0" do
      let(:mark) { 0.0 }
    end

    context "`mark` is 1.0" do
      let(:mark) { 1.0 }
    end

    context "`mark` is 2.2" do
      let(:mark) { 2.2 }
    end

    context "`mark` is 3.3" do
      let(:mark) { 3.3 }
    end

    context "`mark` is 4.4" do
      let(:mark) { 4.4 }
    end

    context "`mark` is 5.5" do
      let(:mark) { 5.5 }
    end

    context "`mark` is 25.5" do
      let(:mark) { 25.5 }
    end

  end

end
