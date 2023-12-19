class AddNameToRound < ActiveRecord::Migration[7.1]
  def change
    add_column :rounds, :combo, :string
  end
end
