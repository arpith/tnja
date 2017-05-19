class RemoveUserFromPositions < ActiveRecord::Migration[5.0]
  def change
    remove_reference :positions, :user, foreign_key: true
  end
end
