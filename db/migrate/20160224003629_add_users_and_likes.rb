class AddUsersAndLikes < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user
      t.string :password
      t.timestamps
    end

    create_table :likes do |t|
      t.integer :user_id
      t.integer :track_id
    end
  end
end
