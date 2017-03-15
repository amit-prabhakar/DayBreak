class MissingCols2 < ActiveRecord::Migration[5.0]
  def change
  	  add_column :examinations, :fetal_anat_general, :string
  end
end
