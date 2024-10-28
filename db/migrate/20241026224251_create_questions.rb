class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.timestamps
      t.integer :survey_id, null: false
      t.string :question, null: false
      t.string :answer, null: false
    end
  end
end
