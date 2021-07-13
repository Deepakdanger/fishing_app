require 'rails_helper'

RSpec.describe 'User', type: :model do
  it 'is not valid without an email' do
    user = User.new(password: '123456')
    expect(user.save).to be(false)
  end
  it 'is not valid without an password' do
    user = User.new(email: 'p@gmail.com')
    expect(user.save).to be(false)
  end
  it 'is saves each field of the user' do
    user = User.new(email: 'p@gmail.com', password: '123456')
    expect(user.email).to eql('p@gmail.com')
  end

  it 'can have many events' do
    a = User.reflect_on_association(:articles)
    expect(a.macro).to eq(:has_many)
  end
  it 'can have many events' do
    a = User.reflect_on_association(:votes)
    expect(a.macro).to eq(:has_many)
  end
end
