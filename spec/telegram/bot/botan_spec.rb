RSpec.describe Telegram::Bot::Botan do
  let(:token) { '88ec570d-966e-4dd3-91fa-d14e467ebc25' }
  let(:botan) { described_class.new(token) }

  it 'has instance' do
    expect(botan).to be_a(Telegram::Bot::Botan)
  end

  describe 'track' do
    subject(:track_call) { botan.track(1, 'text', 'search') }

    it 'has valid response' do
      is_expected.to include({'status' => 'accepted'})
    end
  end
end