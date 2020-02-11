class TasksController < ApplicationController

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task.id)
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task.id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

# app/controllers/restaurants_controller.rb
# class RestaurantsController < ApplicationController
#   def destroy
#     @restaurant = Restaurant.find(params[:id])
#     @restaurant.destroy

#     # no need for app/views/restaurants/destroy.html.erb
#     redirect_to restaurants_path
#   end
# end






  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
