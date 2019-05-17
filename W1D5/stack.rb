 class Stack
    def initialize
      # create ivar to store stack here!
      @ivar = []
    end

    def push(el)
      # adds an element to the stack
      @ivar << el
    end

    def pop
      # removes one element from the stack
      @ivar.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @ivar[-1]
    end
  end

  my_stack = Stack.new
  my_stack.push("kitty")
  p my_stack
  my_stack.push("kitty number 2")
  p my_stack
  my_stack.pop
  p my_stack
  my_stack.push("kitty2")
  p my_stack
  p my_stack.peek

  