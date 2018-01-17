class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :current_city, presence: true
  validates :email, presence: true
  validates :password, presence: true
  has_many :posts, dependent: :destroy
  has_many :cities, through: :posts
  has_secure_password

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
