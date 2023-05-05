require 'rails_helper'

RSpec.describe Reviewpg, type: :model do
  before(:each) do
    @user = User.create(email: 'user@example.com', password: 'password')
    @homepg = Homepg.create(movie_name: 'The Godfather')
    @reviewpg = Reviewpg.create(review: 'Great movie!', rating: 5, homepg_id: @homepg.id, user_id: @user.id)
  end

  context 'validations' do
    it 'requires a review' do
      reviewpg = Reviewpg.new(review: nil, rating: 5, homepg_id: @homepg.id, user_id: @user.id)
      expect(reviewpg).to_not be_valid
    end
  end

  context 'associations' do
    it 'belongs to a movie' do
      expect(@reviewpg.homepg).to eq(nil)
    end

    it 'belongs to a user' do
      expect(@reviewpg.user).to eq(@user)
    end
  end
end
