class CommentRepliesMailbox < ApplicationMailbox
  def process
    return unless user.present?
  end

  def user
    @user ||= User.find_by(email: mail.from)
  end
end
