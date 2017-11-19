class Task

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  # Reader Methods

  def description
    @description
  end

  def due_date
    @due_date
  end

  # Writer Methods
  def description=(description)
    @description = description
  end

  def due_date=(date)
    @due_date = date
  end
end

class Todolist

  def initialize
    @tasks = []
  end

  # Reader Method
  def tasks
    @tasks
  end

  # Writer Method
  def tasks=(task)
    @tasks = task
  end

  def task_add(task)
    tasks << task
    return tasks
  end

  def all_task_list #iterating through the array and dusplaying the description and tasks
    tasks.each do |task|
      puts "#{task.description} by #{task.due_date}"
    end
  end

end



kyle = Task.new("Pick up grocery", "3pm Oct 24, 2017")
to_do_list = Todolist.new
to_do_list.task_add(kyle)
to_do_list.all_task_list
puts "--"*20
zeke = Task.new("Go to soccer game", "7pm Nov 13, 2017")
jordan = Task.new("Register for GMAT test", "9:30am Dec 1, 2017")
