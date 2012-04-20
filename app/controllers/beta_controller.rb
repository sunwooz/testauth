class BetaController < ApplicationController
  def create
    @beta = Beta.new(params[:beta])
    
    respond_to do |format|
      if @beta.save
        BetaMailer.beta_email(@beta).deliver
        
        format.html { redirect_to(root_url, :notice => 'You have successfully joined the beta.')}
        format.json { render :json => @beta, :status => :created, :location => @beta }
      else
        format.html { render :action => 'new' }
        format.json { render :json => @beta.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def new
    @beta = Beta.new
  end
  
end
