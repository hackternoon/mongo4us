class Link < ActiveRecord::Base
  attr_accessible :href, :tag1, :tag2, :tag3 #, :user_id
  belongs_to :user
  def save
    super if self.user_id.present?
  end
end
