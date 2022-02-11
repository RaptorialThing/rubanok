class Order < ApplicationRecord
	belongs_to :user 
	belongs_to :printer
	enum order_status: [:created,:canceled,:rejected,:accepted,:printed]
end
