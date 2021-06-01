require 'pry'

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

  def empty?
    size == 0
  end

  def push(data)
    @head = Element.new(data, @head)
  end

  def peek
    @head ? @head.datum : nil
  end

  def pop
    popped = @head
    @head = @head.next
    popped.datum
  end

  def self.from_a(start)
    list = SimpleLinkedList.new
    return list if start.nil? || start.empty?
    
    start.reverse.each { |data| list.push(data) }

    list
  end

  def to_a
    arr = []
    current_element = @head
    until current_element.nil?
      arr << current_element.datum
      current_element = current_element.next
    end

    arr
  end

  def reverse
    self.class.from_a(to_a.reverse)
  end
end
