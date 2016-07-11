class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :wines

  def has_subscribed(contest)
    index = wines.index { |wine| wine.contest == contest }
    !index.nil?
  end

  def subscribed_wine(contest)
    selected_wines = wines.select { |wine| wine.contest == contest }
    if selected_wines.empty?
      return nil
    else
      return selected_wines.first
    end
  end

end
