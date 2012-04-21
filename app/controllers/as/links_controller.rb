class As::LinksController < ApplicationController
  active_scaffold :link do |config|
    config.columns = [:href, :tag1, :tag2, :tag3, :user]
  end
end
