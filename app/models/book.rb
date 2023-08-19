class Book < ApplicationRecord
  belongs_to :author
  # has_one :account, dependent: :destroy
  # has_many :books, dependent: :destroy
end
