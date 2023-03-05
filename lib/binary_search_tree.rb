require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    # your code here
    return nil if @root.nil?
    current_node = @root
    while current_node != nil
      if current_node.value > value
        current_node = current_node.left
      elsif current_node.value < value
        current_node = current_node.right
      elsif current_node.value == value
        return current_node
      end
    end
  end

  def insert(value)
    # your code here
    node = Node.new(value)
    if @root.nil?
      @root = node
      return @root
    end
    current_node = @root
    while current_node
      return nil if current_node.value == value
      if current_node.value > value
        if current_node.left.nil?
          current_node.left = node
          return current_node.left
        end
        current_node = current_node.left
      else 
        if current_node.right.nil?
          current_node.right = node
          return current_node.right
        end
        current_node = current_node.right
      end
    end
  end

end 
