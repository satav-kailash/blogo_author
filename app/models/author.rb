class Author < ApplicationRecord
  has_one :account, dependent: :destroy
  has_many :books, dependent: :destroy
end
