class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :email
      t.string :company_name
      t.string :contact
      t.string :social_url

      t.timestamps
    end
  end
end
