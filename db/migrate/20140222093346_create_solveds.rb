class CreateSolveds < ActiveRecord::Migration
  def change
    create_table :solveds do |t|

      t.timestamps
    end
  end
end
