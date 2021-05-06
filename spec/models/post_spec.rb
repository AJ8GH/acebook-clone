require 'rails_helper'
require 'timecop'

RSpec.describe Post, type: :model do
  before(:all) { Timecop.freeze(2000, 1, 1) }

  it { is_expected.to be }

  describe '#less_than_ten_minutes_old?' do
    it 'returns true when created less than 10 minutes ago' do
      post = Post.create(created_at: Time.now)
      expect(post).to be_less_than_ten_minutes_old
    end
  end
end
