# frozen_string_literal: true

# test/services/inverter_lista_service_test.rb
require 'test_helper'

class InverterListaServiceTest < ActiveSupport::TestCase
  test 'should invert list' do
    input_list = ['Oi', 5, '1/1/2005 14:00:00', 1.5, 'Tchau']
    expected_output = ['Tchau', 1.5, '1/1/2005 14:00:00', 5, 'Oi']

    output = InverterListaService.call(input_list)

    assert_equal expected_output, output
  end
end
