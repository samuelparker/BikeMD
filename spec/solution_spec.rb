require_relative 'spec_helper'
require_relative '../app/models/solution'

describe Solution do
  let(:broken_spoke) {Solution.new(est_time: 10, difficulty_level: 5, body: "Fix it up!")}
  describe 'attributes' do
    it 'has an estimated time' do
      expect(broken_spoke.est_time).to eq 10
    end

    it 'has a difficulty level' do
      expect(broken_spoke.difficulty_level).to eq 5
    end

    it 'has some instructions' do
      expect(broken_spoke.body).to eq "Fix it up!"
    end
  end
end
