class Contest < ActiveRecord::Base

  has_many :wines

  def has_ended?
    starts_in.past?
  end

  def winner
    if has_ended?
      wines.sort_by {|wine| wine.grade}
      return wines.last
    end
  end
  
end
