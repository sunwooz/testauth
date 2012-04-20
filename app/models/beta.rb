class Beta < ActiveRecord::Base
  attr_accessible :email
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  
  validates :email, :presence => { :message => "Email Field Cannot Be Blank!" },
                    :length => {
                      :maximum => 50,
                    },
                    :format => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
end
