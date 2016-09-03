class CreateTodoitems < ActiveRecord::Migration
  def change
    create_table :todoitems do |t|

      t.integer :step
      t.string :description

      t.timestamps null: false

      t.references :todolist
    end
  end
end
