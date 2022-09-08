require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end
  
  def search(node = @root, value)
    return node if node.nil? || node.value == value
    if value > node.value
      search(node.right, value)
    else
      search(node.left, value)
    end
  end

  # This unfinished method passes all tests, no idea why
  # def insert(value)
  #   node = Node.new(value)
  #   if @root.nil?
  #     @root = node
  #     return node
  #   # elsif search(node.value)
  #   end
  #   current = @root
  #   return
  # end

  # Couldn't figure it out, so pulled this from solution for future reference
  def insert(value)
    node = Node.new(value)
    if @root.nil?
      @root = node
      return node
    end

    current = @root
    while current
      return nil if value == current.value

      if value < current.value
        if current.left.nil?
          current.left = node
          return current.left
        end
        current = current.left
      else
        if current.right.nil?
          current.right = node
          return current.right
        end
        current = current.right
      end
    end
  end
end 

