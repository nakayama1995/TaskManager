class TasksController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    #@tasks = Task.all
    @tasks = Task.search_name(params[:search1]).search_status(params[:search2]).order("created_at desc").page(params[:page]).per(5)
    #@task = Task.all.order(sort_column + ' ' + sort_direction)
    if params[:sorting] == "desc"
      @tasks = Task.order("deadline desc")
    end
    if params[:sorting] == "asc"
      @tasks = Task.order("deadline asc")
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to @task, notice:t(:create_succeed)
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to @task, notice:t(:update_succeed)
    else
      render 'edit'
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice:t(:delete_succeed)
  end

  def search
    @tasks = search(params[:search])
  end


  private
    def task_params
      params.require(:task).permit(:name, :detail, :deadline, :status, :priority)
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end

    def sort_column
        Task.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end


end
