class LRUCache

  def initialize(size=5)
    @store = []
    @size = size
    nil
  end

  def count
    @store.count
  end

  def add(el)
    @store.delete(el) if @store.include?(el)
    if count < @size
      @store << el
    else
      @store.shift
      @store.push(el)
    end
    nil
  end

  def show
    p @store
    nil
  end

  private
  # helper methods go here!

end
