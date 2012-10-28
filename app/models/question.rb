class Question < ActiveRecord::Base
  attr_accessible :answer, :choices, :section, :statement, :qtype
end
