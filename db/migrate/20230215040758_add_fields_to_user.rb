class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :provider, :string , bulk: true
    add_column :users, :uid, :string
  end
end
