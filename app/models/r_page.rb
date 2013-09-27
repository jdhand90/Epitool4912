class RPage < ActiveRecord::Base
  has_many :r_pages_to_entries
  has_many :r_entries, through: :r_pages_to_entries
  belongs_to :r_language
end
