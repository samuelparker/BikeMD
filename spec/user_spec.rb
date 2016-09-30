require_relative 'spec_helper'
require_relative '../app/models/user'

describe User do
  let(:sam) {User.new(username: "Sam", email: "sam@sam.sam", password: "password")}

  describe 'attributes' do
    it 'has a name' do
      expect(sam.username).to eq 'Sam'
    end

    it 'has an email address' do
      expect(sam.email).to eq 'sam@sam.sam'
    end
  end
end




