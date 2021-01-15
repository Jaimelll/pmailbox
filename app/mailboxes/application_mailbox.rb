class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  # 1er rails s
  routing /support@example.com/i => :support
  # 2do rails s
  routing RepliesMailbox::MATCHER => :replies

  # support+1231@example.com
  # User
  # Ticket
  # Comment

end
