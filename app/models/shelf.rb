class Shelf < ActiveRecord::Base
  attr_accessible :name, :desc, :user_id

  belongs_to :user

  validates :name, :presence => true, :length=>{:maximum => 60}
  validates :user_id, :presence => true

end
