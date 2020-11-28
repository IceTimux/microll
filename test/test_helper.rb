# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

if ENV['CI']
    require 'codecov'
    SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'minitest/autorun'
require 'nokogiri'
require 'open-uri'
