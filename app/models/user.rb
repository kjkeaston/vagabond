class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :cities, through: :posts

  has_secure_password

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

  validates :first_name, presence: true, length: {maximum: 255}
  validates :last_name, presence: true, length: {maximum: 255}
  validates :current_city, presence: true
  validates :email, presence: true, format: { with: /@/, message: "must include @"}, uniqueness: true, length: {maximum: 255}
  validates :password, presence: true
  
end
