class User < ApplicationRecord
	has_one :account, dependent: :destroy
	has_many :todo_lists, dependent: :destroy
	has_many :things_todo, through: :todo_lists, source: :todo_items
end
