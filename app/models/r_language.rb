class RLanguage < ActiveRecord::Base
  has_many :r_pages
  has_many :r_entries
end
