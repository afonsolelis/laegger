# frozen_string_literal: true
# Controller para manipulação de listas encadeadas.
class ListController < ApplicationController
  def invert
    head_node = params[:list_head]
    inverted_list = InvertListService.invert(head_node)
    # Você pode ajustar a saída conforme necessário
    render json: { inverted_list: }
  end
end
