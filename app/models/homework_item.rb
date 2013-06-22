class HomeworkItem < ActiveRecord::Base
  attr_accessible :content, :done, :dueDate, :homework_id
end
