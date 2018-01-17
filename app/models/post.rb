class Post < ApplicationRecord
  
  belongs_to :user
  belongs_to :city

  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {maximum: 200}
  validates :content, presence: true

end
