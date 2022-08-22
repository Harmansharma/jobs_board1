class AddMobileToEmployers < ActiveRecord::Migration[7.0]
  def change
    add_column :employers, :employer_mobile_number, :integer
  end
end
