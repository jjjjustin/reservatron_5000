class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  has_many :comments

  def start_timestamp
    (start_time - 6.hours).strftime('%b %e, %l:%M %p')
  end

  def end_timestamp
    (end_time - 6.hours).strftime('%b %e, %l:%M %p')
  end

  def meeting_author_email
    user.try(:email)
  end
end
