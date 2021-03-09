require 'rails_helper'

RSpec.describe Api::V1::ChifoumiController, type: :controller do
  context 'Create a new move' do
    it 'Returns Success Code and Result object' do
      post :new, params: { name: 'alan', move: 'rock' }
      # expect(response.code).to eq('200')
      hash_body = nil
      expect { hash_body = JSON.parse(response.body).with_indifferent_access }.not_to raise_exception
      expect(hash_body.keys).to match_array(%w[moves result])
    end
  end
end
