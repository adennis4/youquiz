class SubjectsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @subjects = Subject.all.map { |s| s.subject }
  end

  def show
    @quizzes = Quiz.find_by_title(params[:id])
  end

  def edit
  end

  def update
  end
end
