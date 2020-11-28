# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/item'

class TestItem < Minitest::Test
  def setup
    @item = Item.new(title: 'test', date: '2020-04-12', url: 'http://example.com')
  end

  def test_can_create_instance_of_item
    refute_nil @item
  end
end
