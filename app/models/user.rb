class User < ActiveRecord::Base
  has_secure_password
  has_many :products, dependent: :destroy
  has_many :contributions, dependent: :destroy
  has_many :products, through: :contributions, dependent: :destroy
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, confirmation: true

end
