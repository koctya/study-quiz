class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :section
      t.string :qtype
      t.text :statement
      t.text :choices
      t.string :answer

      t.timestamps
    end
  end
end
