class Article < ApplicationRecord
  validates :title,:body, presence: true 
  validates :title, length: {minimum: 2, maximum: 4, message: "not allowed"} 
  validates :title, uniqueness: { case_sensitive: false, message: "not allowed"}
  validates :title, numericality: false 
end