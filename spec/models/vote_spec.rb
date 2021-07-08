require 'rails_helper'

RSpec.describe 'Vote', type: :model do
  it 'is not valid without an article_id' do
    vote = Vote.new(user_id: 1)
    expect(vote.save).to be(false)
  end
  it 'is not valid without an password' do
    vote = Vote.new(article_id: 1)
    expect(vote.save).to be(false)
  end
  it 'belongs to article association' do
    vote = Vote.reflect_on_association(:article)
    expect(vote.macro).to eq(:belongs_to)
  end
  it 'belongs to user association' do
    vote = Vote.reflect_on_association(:user)
    expect(vote.macro).to eq(:belongs_to)
  end
end
