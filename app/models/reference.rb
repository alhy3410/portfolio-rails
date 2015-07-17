class Reference < ActiveRecord::Base
  belongs_to :project

  validates :name, :presence => true
  validates :reference, :presence => true

end
