class Wine < ActiveRecord::Base

  belongs_to :contest

  belongs_to :grape

  belongs_to :user

  validates_presence_of :name, :grape, :year, :vivino_score, :price, :contest

  # validates_inclusion_of :year, in: (Date.today.year - 10)..(Date.today.year)

  validates_numericality_of :price, :vivino_score

  def grade
    (vivino_score * vivino_score)/price
  end
  
end
