class Sccommand < ActiveRecord::Base
  
  def self.search(search)
    if search
      where('commandstr or description LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
