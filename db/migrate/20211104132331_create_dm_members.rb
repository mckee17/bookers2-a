class CreateDmMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :dm_members do |t|
      t.integer :user_id
      t.integer :dm_id

      t.timestamps
    end
  end
end
