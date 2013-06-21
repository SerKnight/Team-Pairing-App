class MembersTeams < ActiveRecord::Migration
  def change
    create_table :members_teams, :id => false do |t|
      t.integer :team_id
      t.integer :member_id
    end
  end
end