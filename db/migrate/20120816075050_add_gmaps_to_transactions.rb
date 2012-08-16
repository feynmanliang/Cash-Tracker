class AddGmapsToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :gmaps, :boolean
  end
end
