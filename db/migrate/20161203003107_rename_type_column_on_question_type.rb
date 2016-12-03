class RenameTypeColumnOnQuestionType < ActiveRecord::Migration[5.0]
  def change
    rename_column :question_types, :type, :question_type
  end
end
