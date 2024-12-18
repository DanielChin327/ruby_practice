class Repository
  def initialize
   @tasks = []
  end

  def add (task)
    @tasks.push(task)
  end

  def all
   return @tasks
  end

  def find(index)
    @tasks[index]
  end
end
