class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_items
  has_many :occasion_users
  has_many :occasions, through: :occasion_users
  has_many :claims

  validates :nickname, presence: true
end
