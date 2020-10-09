class SlashdotReader < Reader
  def initialize(url)
    super
  end

  def read
    xml(@url).css('item').map do |item|
      title = item.css('title').first.content
      date = item.css('dc|date').first.content
      url = item.attr('rdf:about')
      
      if title && date && url
        Item.new(title: title, date: date, url: url)
      end
    end
  end
end
