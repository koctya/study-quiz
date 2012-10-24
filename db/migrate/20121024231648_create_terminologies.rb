class CreateTerminologies < ActiveRecord::Migration
  def change
    create_table :terminologies do |t|
      t.string :term
      t.text :desc

      t.timestamps
    end
  end
end
