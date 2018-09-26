require 'rails_helper'

RSpec.describe Contest, type: :model do
  context 'validation tests' do
    it 'ensure name presence' do
      contest = Contest.new(starts_in: Date.new).save
      expect(contest).to eq(false)
    end

    it 'ensure starts_in presence' do
      contest = Contest.new(name: 'My new contest').save
      expect(contest).to eq(false)
    end

    it 'should save successfully' do
      contest = Contest.new(name: 'My new contest', starts_in: Date.new).save
      expect(contest).to eq(true)
    end
  end

  context 'scope tests' do
    before(:each) do
      contest = Contest.new(name: 'My contest 1', starts_in: Date.new(2001, 2, 3)).save
      contest = Contest.new(name: 'My contest 2', starts_in: Date.new(2010, 2, 3)).save
      contest = Contest.new(name: 'My contest 3', starts_in: Date.new(2050, 2, 3)).save
    end

    it 'should return active contests' do
      expect(Contest.active_contests.size).to eq(1)
    end

    it 'should return inactive contests' do
      expect(Contest.inactive_contests.size).to eq(2)
    end
  end
end
