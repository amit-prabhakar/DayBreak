class AddSummaryToExaminations < ActiveRecord::Migration[5.0]
  def change
    add_column :examinations, :summary, :string
  end
end
