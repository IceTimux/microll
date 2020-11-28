# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/modules/xml'

class TestXML < Minitest::Test
  def test_can_return_nokogiri_document
    url = 'http://example.com'
    res = XML.xml(url)
    refute_nil res
    assert_equal Nokogiri::XML::Document, res.class
  end
end
