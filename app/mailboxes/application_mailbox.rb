class ApplicationMailbox < ActionMailbox::Base
  routing CommentRepliesMailbox::REGEX => :comment_replies
end
