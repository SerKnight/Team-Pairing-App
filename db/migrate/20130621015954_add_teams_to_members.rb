class AddTeamsToMembers < ActiveRecord::Migration
  def change
    add_column :members, :team_id, :integer
  end
end
