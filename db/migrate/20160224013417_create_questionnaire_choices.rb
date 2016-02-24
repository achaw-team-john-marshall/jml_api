class CreateQuestionnaireChoices < ActiveRecord::Migration
  def change
    create_table :questionnaire_choices do |t|
      t.text :body
      t.boolean :visible
      t.integer :position

      t.timestamps null: false
    end
  end
end
