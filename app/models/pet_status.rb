class PetStatus < ApplicationRecord

	has_many :post	

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

end