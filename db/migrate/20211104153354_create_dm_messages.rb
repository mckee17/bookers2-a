class CreateDmMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :dm_messages do |t|
      t.integer :user_id
      t.integer :dm_id
      t.text :message

      t.timestamps
    end
  end
end
