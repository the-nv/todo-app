class TodoList < ApplicationRecord
    has_many :todo_items, dependent: :destroy

    validates :title, presence: true,
                    length: { minimum: 5 }
end
