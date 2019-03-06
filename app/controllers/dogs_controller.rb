class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
    @employee = Employee.where(dog_id: @dog.id)
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create
  end

  def edit
    @dog = Dog.find(params[:id])
  end

end
