# Invert class
class InvertListService
  # Node class
  class Node
    attr_accessor :value, :next_node

    def initialize(value)
      @value = value
      @next_node = nil
    end
  end

  def self.invert(head)
    previous = nil
    current = head
    while !current.nil?
      next_node = current.next_node
      current.next_node = previous
      previous = current
      current = next_node
    end
    previous
  end
end
