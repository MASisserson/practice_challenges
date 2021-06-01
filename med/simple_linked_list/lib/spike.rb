class Element
  def initialize(data, pointer=nil)
    @data = data
    @pointer = pointer
  end

  def datum
    @data
  end

  def tail?
    @pointer.nil?
  end

  def next
    @pointer
  end
end

class SimpleLinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  def size
    return 0 if @head.nil?
    
    counter = 1
    current_element = @head
    until current_element.tail?
      counter += 1
      current_element = current_element.next
    end

    counter
  end
end
