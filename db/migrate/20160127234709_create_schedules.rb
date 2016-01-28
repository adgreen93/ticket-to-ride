class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :employee
      t.integer :hours

      t.timestamps null: false
    end
  end
end
