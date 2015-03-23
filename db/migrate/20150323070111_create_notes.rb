class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body, null: false
      t.references :user, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :notes, :user
  end
end
