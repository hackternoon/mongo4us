class Link < ActiveRecord::Base
  attr_accessible :href, :tag1, :tag2, :tag3 # I dont let user set :user_id
  belongs_to :user
end
