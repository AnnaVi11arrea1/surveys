class CreateSurveys < ActiveRecord::Migration[7.2]
  def change
    create_table :surveys do |t|
      t.timestamps
      t.string :name, null: false
      t.string :responder_id, null: false
    end
  end
end
