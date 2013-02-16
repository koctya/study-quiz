class AddSectionsToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :sections, :string
  end
end
