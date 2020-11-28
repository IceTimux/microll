# frozen_string_literal: true

class LobstersReader < Reader
  def read
    XML.xml(@url).css('item').map do |item|
      title = item.css('title').first.content
      date = item.css('pubDate').first.content
      url = item.css('link').first.content

      Item.new(title: title, date: date, url: url)
    end
  end
end
