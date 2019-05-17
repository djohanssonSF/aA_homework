class Queue

  def initialize
    @fifo = []
  end

  def enqueue(el)
    @fifo.push(el)
  end

  def dequeue
    @fifo.shift
  end

  def peek
    @fifo[0]
  end

end

my_queue = Queue.new

p my_queue
my_queue.enqueue("meow")
p my_queue
my_queue.enqueue("snort")
p my_queue
my_queue.enqueue("purr")
p my_queue

my_queue.dequeue # should remove "meow"
p my_queue
p my_queue.peek # should be "snort"

#purring snorting meowing kitties were around me as i did my homework - wondering where i have been all week