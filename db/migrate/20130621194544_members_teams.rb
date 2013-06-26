class MembersTeams < ActiveRecord::Migration
  def change
    create_table :members_teams, :id => false do |t|
      t.references :team
      t.references :member
    end
  end
end