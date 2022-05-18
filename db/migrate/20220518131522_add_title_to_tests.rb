class AddTitleToTests < ActiveRecord::Migration[7.0]
  def change
    add_column :tests, :title, :string
  end
end
