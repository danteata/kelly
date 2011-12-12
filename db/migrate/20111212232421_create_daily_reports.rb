class CreateDailyReports < ActiveRecord::Migration
  def change
    create_table :daily_reports do |t|
      t.integer :supervisor_id
      t.text :comment
      t.date :date

      t.timestamps
    end
  end
end
