class RemoveEndDateFromJournals < ActiveRecord::Migration[6.0]
  def change
    remove_column :journals, :end_date
  end
end
