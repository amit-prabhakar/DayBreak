class MissingCols < ActiveRecord::Migration[5.0]
  def change
  		add_column :examinations, :fetal_heart_hrate, :string
  end
end
