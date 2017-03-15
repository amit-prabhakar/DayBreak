class MissingPlacentaTab < ActiveRecord::Migration[5.0]
  def change
  	  add_column :examinations, :placenta_general, :string
  	  add_column :examinations, :placenta_longitude, :string
  	  add_column :examinations, :placenta_transverse, :string
  	  add_column :examinations, :placenta_appearance, :string
  	  add_column :examinations, :placenta_cord_vessels, :string
  	  add_column :examinations, :placenta_grade, :string
  	  add_column :examinations, :placenta_cord_ins, :string
  	  add_column :examinations, :placenta_chorionicity, :string
  end
end
