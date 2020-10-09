require 'sinatra'
require 'erb'
require './lib/modules/xml'
require './lib/item'
require './lib/reader'
require './lib/hacker_news_reader'
require './lib/slashdot_reader'
require './lib/lobsters_reader'
require './lib/home_page'

readers = [
  HackerNewsReader.new('https://news.ycombinator.com/rss'),
  SlashdotReader.new('http://rss.slashdot.org/Slashdot/slashdotMain'),
  LobstersReader.new('https://lobste.rs/rss')
]

get '/' do
  items = File.open('./data/home_page.dat').readlines.map do |item|
    eval(item.chomp)
  end

  locals = {
    :items => items,
    :updated_at => File.mtime('./data/home_page.dat')
  }

  erb :index, :locals => locals
end

Thread.new do
  loop do
    sleep 60 * 30
    HomePage.update(readers)
  end
end
