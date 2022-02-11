class Order < ApplicationRecord
	belongs_to :user 
	belongs_to :printer
	enum order_status: [:new,:canceled,:rejected,:accepted,:printed]
end
