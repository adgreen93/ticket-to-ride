class AddUsersToSchedules < ActiveRecord::Migration
  def change
    add_reference :schedules, :users, index: true, foreign_key: true
  end
end
