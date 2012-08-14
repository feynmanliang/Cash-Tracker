class AddUserIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :user_id, :integer
    add_index :transactions, [:user_id, :created_at]
  end
end
