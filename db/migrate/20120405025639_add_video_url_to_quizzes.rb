class AddVideoUrlToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :video_url, :string
  end
end
