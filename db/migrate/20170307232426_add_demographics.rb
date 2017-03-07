class AddDemographics < ActiveRecord::Migration[5.0]
  def change
		add_column :examinations, :demographics_study_location, :string
		add_column :examinations, :demographics_accession, :string
		add_column :examinations, :demographics_study_date, :date
		add_column :examinations, :demographics_gravida, :integer
		add_column :examinations, :demographics_para, :integer
		add_column :examinations, :demographics_lmp, :date
		add_column :examinations, :demographics_maternal_weight, :integer
  end
end
