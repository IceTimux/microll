# frozen_string_literal: true

module XML
  def self.xml(url)
    Nokogiri::XML(URI.open(url))
  end
end
