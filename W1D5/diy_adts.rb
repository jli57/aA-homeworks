class Stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack.push(el)
  end

  def pop
    # removes one element from the stack
    @stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack.last
  end
end

# test
# s = Stack.new
#
# p s.push(4)
# p s.push(5)
#
# p s.pop
# p s.peek

class Queue
  def initialize
   @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end
end

# test
# q = Queue.new
#
# p q.enqueue(4)
# p q.enqueue(5)
#
# p q.dequeue
# p q.peek


class Map


  def initialize
    @map = []
  end

  def set(key, value)
    @map.push([key, value])
  end

  def get(key)
    @map.each do |pair|
      k, val = pair
      return val if k == key
    end
    nil
  end

  def delete(key)
    @map.each_with_index do |pair, ind|
      @map.delete_at(ind) if pair.first == key
    end
  end

  def show
    @map
  end

end

# test
m = Map.new

# p m.set("Jingna", "Awesome")
# p m.set("AppAcademy", "Coding Bootcamp")
#
# p m.get("Jingna")
# p m.get("AppAcademy")
#
# p m.show
#
# p m.delete("AppAcademy")
#
# p m.show
