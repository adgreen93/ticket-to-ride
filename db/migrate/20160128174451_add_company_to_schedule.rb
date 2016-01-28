class AddCompanyToSchedule < ActiveRecord::Migration
  def change
    add_reference :schedules, :companies, index: true, foreign_key: true
  end
end
