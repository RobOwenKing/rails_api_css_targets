class Challenge < ApplicationRecord
  validates_presence_of :name, :html, :css
end
