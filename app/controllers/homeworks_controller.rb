class HomeworksController < ApplicationController
  before _action :set_homework, only: %i[show :update]

  def index
    @homework = Homework.all
  end

  def show
  end

  def update
    @homework.update
  end

  private

  def set_homework
    @homework = Homework.find(params[:id])
  end

  def homework_params
    params.requiere(:homework).permit(:attach, :content, :answer, :type)
  end
end
