class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @sccommands = Sccommand.find(:all, :order => "updated_at desc", :limit => 5)      
      @frameworks = Framework.find(:all, :order => "updated_at", :limit => 5).reverse 
      @scerrors   = Scerror.find(:all, :order => "updated_at", :limit => 5).reverse       
      @notes      = Note.find(:all, :order => "updated_at", :limit => 5).reverse 
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end