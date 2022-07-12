require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    user = User.create(name: 'Lynette', email: 'lynette@test.come', password: 'karate')
    Category.new(author: user, name: 'fitness', icon: 'new_icon')
  end

  before { subject.save }

  it 'subject should be valid' do
    expect(subject).to be_valid
  end

  describe 'validations' do
    it 'not valid without name' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'name exists' do
      subject.name = 'Lynette'
      expect(subject).to be_valid
    end

    it 'invalid with empty icon name' do
      subject.icon = ''
      expect(subject).to_not be_valid
    end
  end
end
