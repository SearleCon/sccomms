class Sccommand < ActiveRecord::Base
  
  def self.search(search)
    if search
      where('commandstr LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
