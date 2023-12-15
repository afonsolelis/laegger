# frozen_string_literal: true

require 'test_helper'

class ListasControllerTest < ActionController::TestCase
  test 'should invert list' do
    post :inverter, params: { list: ['Oi', 5, '1/1/2005 14:00:00', 1.5, 'Tchau'] }, as: :json

    assert_response :success

    expected_response = ['Tchau', 1.5, '1/1/2005 14:00:00', 5, 'Oi']
    assert_equal expected_response, JSON.parse(response.body)
  end
end
