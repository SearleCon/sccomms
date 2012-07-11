class Sccommand < ActiveRecord::Base
  belongs_to :framework
  has_many :notes
  
  def self.search(search)
    if search
      where('commandstr LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
