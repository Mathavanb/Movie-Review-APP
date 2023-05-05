require 'rails_helper'

RSpec.describe Homepg, type: :model do
  let(:homepg) { Homepg.new(movie_name: 'Test Movie', release_date: '2023-05-04') }

  it 'is valid with valid attributes' do
    expect(homepg).to be_valid
  end

  it 'is not valid without a movie name' do
    homepg.movie_name = nil
    expect(homepg).to_not be_valid
  end

  it 'is not valid without a release date' do
    homepg.release_date = nil
    expect(homepg).to_not be_valid
  end

  it 'should have many reviewpgs' do
    t = Homepg.reflect_on_association(:reviewpgs)
    expect(t.macro).to eq(:has_many)
  end

  it 'should have one attached image' do
    t = Homepg.reflect_on_association(:image_attachment)
    expect(t.macro).to eq(:has_one)
  end

  it 'should have one attached video' do
    t = Homepg.reflect_on_association(:video_attachment)
    expect(t.macro).to eq(:has_one)
  end

end
