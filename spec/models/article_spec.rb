require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'should belong to the user' do
    a = Article.reflect_on_association(:votes)
    expect(a.macro).to eq(:has_many)
  end
  it 'should belong to the user' do
    a = Article.reflect_on_association(:user)
    expect(a.macro).to eq(:belongs_to)
  end
  it 'should belong to the user' do
    a = Article.reflect_on_association(:category)
    expect(a.macro).to eq(:belongs_to)
  end
end
