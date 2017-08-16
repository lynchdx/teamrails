class Section < ApplicationRecord
  belongs_to :teacher
  belongs_to :day
  belongs_to :subject
  belongs_to :assitance
end
