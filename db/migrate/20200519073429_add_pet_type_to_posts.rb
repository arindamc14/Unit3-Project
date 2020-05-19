class AddPetTypeToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :pet_type, foreign_key: true
  end
end
