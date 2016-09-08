class AddCompletedAtToTodoitems < ActiveRecord::Migration
  def change
    add_column :todoitems, :completed_at, :datetime
  end
end
