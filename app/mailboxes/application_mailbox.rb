class ApplicationMailbox < ActionMailbox::Base
  routing /reply-(.+)@example.com/i => :comment_replies
end
