class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room

  def meeting_author_email
    user.try(:email)
  end
end
