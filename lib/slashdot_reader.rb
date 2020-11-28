# frozen_string_literal: true

class SlashdotReader < Reader
  def read
    XML.xml(@url).css('item').map do |item|
      title = item.css('title').first.content
      date = item.css('dc|date').first.content
      url = item.attr('rdf:about')

      Item.new(title: title, date: date, url: url) if title && date && url
    end
  end
end
