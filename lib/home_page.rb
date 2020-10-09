require 'relative_time'

class HomePage
  def self.update(readers)
    File.open('./data/home_page.dat', 'w') do |file|
      items = readers.map(&:read).flatten.shuffle
      items.each do |item|
        file_item = {
          'title' => item.title,
          'date' => item.date.iso8601,
          'relative_time' => RelativeTime.in_words(DateTime.now, item.date).gsub('in ', '') + ' ago',
          'url' => item.url
        }
        file.puts file_item
      end
    end
  end
end
