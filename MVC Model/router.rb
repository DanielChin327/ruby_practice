class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "\nList of Options"
      puts "1 - Add a task"
      puts "2 - List all made tasks"
      puts "3 - Mark as complete \n"
      puts "What would you like do do? "
      puts ""
      choice = gets.chomp.to_i

      if choice == 1
        @controller.add_task
      elsif choice == 2
        @controller.list_tasks
      elsif choice == 3
        @controller.mark_task_as_completed
      else
        puts "unrecognizable input"
      end
    end
  end

end
