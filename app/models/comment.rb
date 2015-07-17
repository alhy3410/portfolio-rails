class Comment < ActiveRecord::Base
  belongs_to :project

  validates :name, :presence => true
  validates :comment, :presence => true

end
