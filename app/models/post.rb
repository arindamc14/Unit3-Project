class Post < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :user
  belongs_to :pet_type
  belongs_to :pet_status

  paginates_per 6
  



end