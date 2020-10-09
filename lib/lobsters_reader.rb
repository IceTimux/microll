class LobstersReader < Reader
  def initialize(url)
    super
  end

  def read
    xml(@url).css('item').map do |item|
      title = item.css('title').first.content
      date = item.css('pubDate').first.content
      url = item.css('link').first.content

      Item.new(title: title, date:date, url: url)
    end
  end
end
