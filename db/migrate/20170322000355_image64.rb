class Image64 < ActiveRecord::Migration[5.0]
  def change
  	add_column :examinations, :image64, :string
  end
end
