# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/reader'

class TestReader < Minitest::Test
  def setup
    url = 'http://example.com'
    @reader = Reader.new(url)
  end

  def test_something
    refute_nil @reader
  end
end
