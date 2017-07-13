class User < ApplicationRecord
  belongs_to :position, optional: true
  belongs_to :category, optional: true
  has_many :payments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
