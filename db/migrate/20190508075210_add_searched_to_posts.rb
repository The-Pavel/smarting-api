class AddSearchedToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :searched, :string
  end
end
