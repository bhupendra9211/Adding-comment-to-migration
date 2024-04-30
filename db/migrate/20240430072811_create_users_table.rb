class CreateUsersTable < ActiveRecord::Migration[7.1]
  def change
    create_table :users_tables do |t|
      t.string :username, comment: 'Name of the User'
      t.string :email, comment: 'Email of the User'
      t.timestamps
    end
  end
end
