class Map

  def initialize
    @stack_map = []
  end

  def set(key, value)
    if (@stack_map.select {|ele| ele[0] == key }.length == 1)
      @stack_map.map! do |pair| 
        pair[0] == key ? [key, value] : pair
      end
    else
      @stack_map.push([key, value])
    end   
  end

  def get(key)
    @stack_map.each do |ele| 
      if ele[0] == key
        return ele[1]
      end
    end
    return nil
  end

  def delete(key)
    @stack_map.select! { |ele| ele[0] != key }
  end

  def show
    p @stack_map
  end

end

my_map_stack = Map.new
my_map_stack.set("cat", "nikolai")
my_map_stack.set("sneezer", "sasha")
my_map_stack.show
my_map_stack.set("cat", "dimitri")
my_map_stack.show
my_map_stack.delete("cat")
my_map_stack.show