# frozen_string_literal: true

# app/services/inverter_lista_service.rb
class InverterListaService
  class Node
    attr_accessor :value, :next

    def initialize(value, next_node = nil)
      @value = value
      @next = next_node
    end
  end

  def self.call(nodes)
    head = nodes_to_list(nodes)

    new_head = inverte_lista(head)

    list_to_nodes(new_head)
  end

  def self.nodes_to_list(nodes)
    nodes.reverse.reduce(nil) { |next_node, value| Node.new(value, next_node) }
  end

  def self.list_to_nodes(head)
    nodes = []
    node = head
    while node
      nodes << node.value
      node = node.next
    end
    nodes
  end

  def self.inverte_lista(node)
    current = node
    previous = nil

    while current
      next_node = current.next
      current.next = previous
      previous = current
      current = next_node
    end

    previous
  end
end
