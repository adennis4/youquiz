class QuizzesController < ApplicationController
  
  def new
    @quiz = Quiz.new
  end
  
  def create
  end
  
  def show
    @quiz
  end
end
