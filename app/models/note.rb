class Note < ActiveRecord::Base
  belongs_to :sccommand
  belongs_to :framework
  belongs_to :scerror
end
