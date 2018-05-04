class Article < ActiveRecord::Base
  belongs_to :user
  han_many :picks
end
