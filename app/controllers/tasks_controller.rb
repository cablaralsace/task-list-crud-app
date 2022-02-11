class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end
  # @variable - instance variable yung
  # naka-@ para maaccess sa labas ng class
  
  def show
    @task = Task.find(params[:id])
    # params hash-like
    # [:id] - key, supplied as symbol
  end

  def new
     @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
        redirect_to tasks_path, notice: 'Task was succesfully created.'
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    
    if @task.update(task_params)
      redirect_to tasks_path, notice: 'Task was succesfully updated.'
    else
      render :edit
    end
  end

  def delete
    @task = Task.find(params[:id])

    @task.destroy
    redirect_to tasks_path, notice: 'Task was successfully deleted.'
  end

  private

  def task_params
    params.require(:task).permit(:person, :overview)
  end

end
