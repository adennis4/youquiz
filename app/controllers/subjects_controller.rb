class SubjectsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @subjects = Subject.all.map { |s| s.subject }
  end

  def show
  end

  def edit
  end

  def update
  end
end
