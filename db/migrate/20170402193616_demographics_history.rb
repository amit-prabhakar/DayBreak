class DemographicsHistory < ActiveRecord::Migration[5.0]
  def change
  	  	add_column :examinations, :demographics_history, :string
  end
end
