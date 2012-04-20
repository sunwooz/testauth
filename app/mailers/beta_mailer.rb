class BetaMailer < ActionMailer::Base
  default from: "yangsunwoo@gmail.com"
  
  def beta_email(beta)
    @beta = beta
    @url = "http://thataccent.com"
    mail(:to => beta.email, :subject => "Welcome to ThatAccent.com!")
  end
end
