class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.integer :team_id
      t.integer :user_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
