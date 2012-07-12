class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @sccommands = Sccommand.find(:all, :order => "updated_at desc", :limit => 5)      
      @frameworks = Framework.find(:all, :order => "updated_at desc", :limit => 5) 
      @scerrors   = Scerror.find(:all, :order => "updated_at desc", :limit => 5)       
      @notes      = Note.find(:all, :order => "updated_at desc", :limit => 5) 
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end