class Wine < ActiveRecord::Base

  belongs_to :contest

  belongs_to :user

  has_and_belongs_to_many :grapes,
    :join_table => :wines_grapes

  validates_presence_of :name, :grapes, :year, :vivino_score, :price, :contest

  # validates_inclusion_of :year, in: (Date.today.year - 10)..(Date.today.year)

  validates_numericality_of :price, :vivino_score

  accepts_nested_attributes_for :grapes

  def grade
    (vivino_score * vivino_score)/price
  end
  
end
