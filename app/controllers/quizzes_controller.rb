class QuizzesController < ApplicationController
  
  def new
    @quiz = Quiz.new
  end
  
  def index
    @quizzes = Quiz.all.map { |q| q.title}
  end
  
  def create
    @quiz = Quiz.new(params[:quiz])
    if @quiz.save
      redirect_to quizzes_path, :notice => "Created new Quiz"
    else
      render "new"
    end
  end
  
  def show
    @quiz
  end
end
