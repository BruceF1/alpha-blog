class Article < ApplicationRecord
  validates :title, presence: true, length: { minimim: 6, maximum: 100}
  validates :description, presence: true, length: { minimim: 10, maximum: 100}
end
