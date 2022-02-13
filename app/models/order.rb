class Order < ApplicationRecord
	belongs_to :user 
	belongs_to :printer
	enum status: [:created,:canceled,:rejected,:accepted,:printed]
end
