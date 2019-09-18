class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def detect_cycle(node)
  tortoise = node #=> node3
  hare = node #=> node3

  while true
    if hare.next_node == nil
      return puts 'No Loop Found'
    end

    hare = hare.next_node #=> node1

    if hare.next_node == nil
      return puts 'No Loop Found'
    end

    hare = hare.next_node #=> node3
    tortoise = tortoise.next_node #=> node3

    if hare == tortoise
      return puts 'Loop Found'
    end
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

detect_cycle(node3)
