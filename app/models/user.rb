class User < ApplicationRecord
	has_one :account, dependent: :destroy
	has_many :todo_lists, dependent: :destroy
end
