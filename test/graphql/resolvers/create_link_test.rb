require 'test_helper'
require 'graphql'

class Resolvers::CreateLinkTest < ActiveSupport::TestCase
  def setup
    @test_url = "http://testurl.com"
    @test_description = "test description"
  end

  def perform(args = {})
    Resolvers::CreateLink.new.call(nil, args, {})
  end

  test 'it creates a new link' do
    link = perform(
      url: @test_url,
      description: @test_description
    )

    assert link.persisted?
    assert_equal link.description, @test_description
    assert_equal link.url, @test_url
  end
end
