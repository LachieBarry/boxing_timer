class CreateRounds < ActiveRecord::Migration[7.1]
  def change
    create_table :rounds do |t|
      t.integer :work_time
      t.integer :rest_time

      t.timestamps
    end
  end
end
