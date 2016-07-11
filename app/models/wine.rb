class Wine < ActiveRecord::Base

  belongs_to :contest

  belongs_to :grape

  belongs_to :user

  validates_presence_of :name, :grape, :year, :vivino_score, :price, :contest
  
end
