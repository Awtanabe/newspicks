class Article < ActiveRecord::Base
  bolongs_to :user
  has_many :picks
end
