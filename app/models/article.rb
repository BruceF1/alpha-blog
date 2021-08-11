class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimim: 6, maximum: 100}
  validates :description, presence: true, length: { minimim: 10, maximum: 100}
  paginates_per 5
end
