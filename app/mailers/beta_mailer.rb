class BetaMailer < ActionMailer::Base
  default from: "yangsunwoo@gmail.com"
  
  def beta_email(beta)
    @beta = beta
    @url = "http://localhost:3000"
    mail(:to => beta.email, :subject => "Welcome to my Site")
  end
end
