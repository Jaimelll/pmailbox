class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  # 1er rails s
  routing /info@parse.jcontador.tk/i => :support
  # routing :all => :support
  # 2do rails s
  routing RepliesMailbox::MATCHER => :replies
  #  routing /@parse.jorgealmacen.cu.ma\./i => :replies
  #routing :all => :replies
  # support+1231@example.com
  # User
  # Ticket
  # Comment

end
