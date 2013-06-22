class User < ActiveRecord::Base
  attr_accessible :clinitian_id, :name, :password
end
