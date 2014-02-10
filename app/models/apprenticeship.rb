class Apprenticeship < ActiveRecord::Base
  attr_accessible :jedi_id, :padawan_id, :level
  belongs_to :jedi
  belongs_to :padawan
  has_one :level
end
