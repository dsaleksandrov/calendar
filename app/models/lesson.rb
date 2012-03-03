class Lesson < ActiveRecord::Base
	scope :desc_scope, order: "id desc"
end
