=begin
1. Describe the problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the class interface
Class: ToDo
Methods: 
    initialize => asign variable
    get_task => receives a string parameter "task"
    view_tasks => return the todo list
    completed_tasks => receive a string with the task should be remove from the list; remove the task

3. Examples
"Walk the dog" + "Do the dinner" + "Clean the garden" => list: ["Walk the dog", "Do the dinner", "Clean the garden"]
delete the task "Clean the garde" => new_list: ["Walk the dog", "Do the dinner"]

=end

require 'class_todo'

describe ToDo do
  it 'fail' do
    task = ToDo.new
    expect {task.get_task("")}.to raise_error 'Nothing to add'
  end

  it "return the task" do 
    task = ToDo.new
    result = task.get_task("Walk the dog")
    expect(result).to eq ["Walk the dog"]
  end

  it "receive three tasks and return a list of tasks" do 
    task = ToDo.new
    task.get_task("Walk the dog")
    task.get_task("Do the dinner")
    task.get_task("Clean the garden")
    result = task.show
    expect(result).to eq ["Walk the dog", "Do the dinner", "Clean the garden"] 
  end

  it "delete a task" do 
    task = ToDo.new
    task.get_task("Walk the dog")
    task.get_task("Do the dinner")
    task.get_task("Clean the garden")
    result = task.delete("Walk the dog")
    expect(result).to eq ["Do the dinner", "Clean the garden"]
  end
  
  it 'fail' do 
    task = ToDo.new
    expect {task.delete("")}.to raise_error "Nothing to delete"
  end
end