require 'byebug'

class BSTNode
  attr_accessor :left, :right
  attr_reader :value

  def initialize(value)
    @value = value
    @left, @right = nil, nil
  end
end

class BinarySearchTree
  def initialize

  end

  def insert(value)

  end

  def find(value)

  end

  def inorder

  end

  def postorder

  end

  def preorder

  end

  def height

  end

  def min

  end

  def max

  end

  def delete(value)

  end

  def self.insert!(node, value)
    # debugger
    return BSTNode.new(value) unless node
    node.left  = BinarySearchTree.insert!(node.left,  value) if value <=  node.value
    node.right = BinarySearchTree.insert!(node.right, value) if value > node.value
    node
  end

  def self.find!(node, value)

  end

  def self.preorder!(node)

  end

  def self.inorder!(node)

  end

  def self.postorder!(node)

  end

  def self.height!(node)

  end

  def self.max(node)
    return nil unless node
    return node unless node.right
    BinarySearchTree.max(node.right)
  end

  def self.min(node)
    return nil unless node
    return node unless node.left
    BinarySearchTree.min(node.left)
  end

  def self.delete_min!(node)

  end

  def self.delete!(node, value)

  end
end
