class CreateQuestionnaireChoices < ActiveRecord::Migration
  def change
    create_table :questionnaire_choices do |t|
      t.text :body
      t.boolean :visible, default: false
      t.integer :position

      t.timestamps null: false
    end
  end
end
