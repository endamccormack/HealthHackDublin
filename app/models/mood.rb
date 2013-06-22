class Mood < ActiveRecord::Base
  attr_accessible :message, :mood, :user_id
end
