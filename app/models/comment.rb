class Comment < ActiveRecord::Base
  belongs_to :Project

  validates :name, :presence => true
  validates :comment, :presence => true

end
