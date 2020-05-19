class AddPetStatusToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :pet_status, foreign_key: true
  end
end
