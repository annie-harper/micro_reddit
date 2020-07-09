class User < ApplicationRecord

  validates :name, :email, :password, presence: true
  validates :password, format: { with: /\A[a-zA-Z]+\z/}

  has_many :posts
  has_many :comments

end
