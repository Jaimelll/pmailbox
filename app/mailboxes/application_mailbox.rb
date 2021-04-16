class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  # 1er rails s
  routing :all => :support
  # 2do rails s
  #  routing /@parse.jorgealmacen.cu.ma\./i => :replies
  # support+1231@example.com
  # User
  # Ticket
  # Comment

end
