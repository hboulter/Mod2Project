class User < ApplicationRecord
  include Clearance::User


    has_many :donations
    has_many :children, through: :donations
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 6 }
    validates :email, presence: true
    validates :password, presence:true
    validates :password, length: { in: 6..20 }

end
