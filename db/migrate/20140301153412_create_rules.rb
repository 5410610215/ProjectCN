class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|

      t.timestamps
    end
  end
  User.create( :username => 'admin', :password => 'admin' )
end
