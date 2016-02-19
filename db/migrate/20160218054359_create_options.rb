class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.text :body, null: false
      t.boolean :visible, default: false

      t.timestamps null: false
    end
  end
end
