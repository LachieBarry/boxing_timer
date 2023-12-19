class AddKeyToRound < ActiveRecord::Migration[7.1]
  def change
    add_reference :rounds, :workout, foreign_key: true
  end
end

