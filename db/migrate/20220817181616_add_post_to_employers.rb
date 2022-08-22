class AddPostToEmployers < ActiveRecord::Migration[7.0]
  def change
    add_column :employers, :number_of_post, :integer
  end
end
