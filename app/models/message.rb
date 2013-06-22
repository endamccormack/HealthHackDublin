class Message < ActiveRecord::Base
  attr_accessible :message, :mood_id
end
