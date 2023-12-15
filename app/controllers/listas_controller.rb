# frozen_string_literal: true

# app/controllers/listas_controller.rb
class ListasController < ApplicationController
  def inverter
    data = JSON.parse(request.body.read)
    nodes = data['list']

    inverted_list = InverterListaService.call(nodes)

    render json: inverted_list
  end
end
