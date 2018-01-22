class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to '/tasks/index'
    else
      render 'new'
    end
  end

  def update
  end


  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end


  private
    def task_params
      params.require(:task).permit(:name, :detail)
    end

end
