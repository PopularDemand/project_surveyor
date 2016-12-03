class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :survey, foreign_key: true
      t.string :prompt, :required => true
      t.references :question_type, foreign_key: true
      t.boolean :required_answer

      t.timestamps
    end
  end
end
