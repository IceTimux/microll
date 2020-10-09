module XML
  def xml(url)
    Nokogiri::XML(URI.open(url))
  end
end
