class Contest < ActiveRecord::Base

  scope :active_contests, -> { where('starts_in > current_timestamp') }
  scope :inactive_contests, -> { where('starts_in < current_timestamp') }
  has_many :wines

  validates_presence_of :name, :starts_in

  def has_ended?
    starts_in.past?
  end

  def winner
    if has_ended?
      wines.sort_by {|wine| wine.grade}
      return wines.first
    end
  end
  
end
