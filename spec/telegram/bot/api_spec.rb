RSpec.describe Telegram::Bot::Api do
  let(:token) { '463215053:AAHv33z-qovB-csMf8DatZUC_GaAU1230q0' }
  let(:api) { described_class.new(token) }

  describe 'getMe' do
    subject(:api_call) { api.getMe }

    it 'returns Telegram::Bot::Types::User' do
      is_expected.to be_a(Telegram::Bot::Types::User)
    end

    it 'has id' do
      is_expected.to have_attributes(id: (a_value > 0))
    end

    context 'has invalid token' do
      let(:token) { '1:invalid_token' }

      it 'raises an error' do
        expect { api_call }.to raise_error(Telegram::Bot::Exceptions::ResponseError)
      end
    end
  end
end