class Task < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :category, presence: true
end
