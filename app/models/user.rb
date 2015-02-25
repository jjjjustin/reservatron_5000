class User < ActiveRecord::Base
  has_many :meetings
  has_many :comments
  has_many :meeting_comments, through: :posts, source: :meetings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
