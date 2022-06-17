class ToDo
  def initialize
    @list = []
  end

  def get_task(task_to_add)
    fail "Nothing to add" if task_to_add.empty?
    @list << task_to_add
  end

  def show
    @list
  end

  def delete(task_to_delete)
    fail "Nothing to delete" if task_to_delete.empty?
    @list.delete(task_to_delete)
    show
  end
end
