class Order < ApplicationRecord
	belongs_to :user 
	belongs_to :printer
	enum status: [:new,:canceled,:rejected,:accepted,:printed]
end
