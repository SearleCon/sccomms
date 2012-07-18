class Scerror < ActiveRecord::Base
  has_many :notes
  belongs_to :framework
  belongs_to :sccommand
  mount_uploader :image, ImageUploader

end
