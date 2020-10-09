require 'nokogiri'
require 'open-uri'

class Reader
  include XML

  def initialize(url)
    @url = url
  end
end
