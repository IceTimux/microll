# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require_relative 'modules/xml'

class Reader
  include XML

  def initialize(url)
    @url = url
  end
end
