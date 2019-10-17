class CommentRepliesMailbox < ApplicationMailbox
  def process
    return unless user.present?

    discussion.comments.create(
      user: user,
      body: mail.decoded
    )
  end

  def user
    @user ||= User.find_by(email: mail.from)
  end

  def discussion
    @discussion ||= Discussion.find(discussion_id)
  end

  def discussion_id
    recepient = mail.recepients.find{ |r| REGEX.match?(r) }
    recepient[REGEX, 1]
  end
end
