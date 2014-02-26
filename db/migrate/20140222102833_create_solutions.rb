class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.integer :topic_id
      t.text :solution
      t.string :user
      t.integer :worked

      t.timestamps
    end
  end
end
