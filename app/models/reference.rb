class Reference < ActiveRecord::Base
  belongs_to :Project

  validates :name, :presence => true
  validates :refernce, :presence => true

end
