class CreateVillages < ActiveRecord::Migration[7.0]
  def change
    create_table :villages do |t|
      t.string :village_name
      t.string :village_block
      t.string :pin_code
      t.string :post_office
      t.string :district

      t.timestamps
    end
  end
end
