class Wine < ActiveRecord::Base

  belongs_to :contest

  belongs_to :grape

  validates_presence_of :name, :grape, :year, :contest, :vivino_score, :price
  
end
