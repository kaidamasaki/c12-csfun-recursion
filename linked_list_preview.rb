class List
  attr_reader :head, :tail
  
  def initialize(head, tail)
    @head = head
    @tail = tail
  end
  
  def self.from_array(array)
    return List.from_array_helper(array.reverse, 0)
  end
  
  private 
  
  def self.from_array_helper(array, head = 0, list = nil)
    # Base case(s)
    if head == array.length - 1
      return list
    else
      # Recursive case(s)
      return List.from_array(array, head + 1, List.new(array[head], list))
    end
  end
  
  def to_a
  end
end

puts List.from_array([1,2,3])
# List.new(1, List.new(2, List.new(3)))
