# frozen_string_literal: true

require 'date'

class Item
  attr_reader :title, :date, :url

  def initialize(title:, date:, url:)
    @title = title
    @date = DateTime.parse(date)
    @url = url
  end
end
