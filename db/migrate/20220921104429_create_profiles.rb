class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :father_name
      t.string :mother_name
      t.integer :birth
      t.string :email
      t.integer :addhar_no

      t.timestamps
    end
  end
end
