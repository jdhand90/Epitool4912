class REntry < ActiveRecord::Base
  belongs_to :r_language
  has_many :r_pages, through: :r_pages_to_entries
end
