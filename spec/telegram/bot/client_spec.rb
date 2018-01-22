RSpec.describe Telegram::Bot::Client do
  let(:handler) { RspecClientHandler }
  let(:client) { described_class.new(handler) }
  let(:test_request) { {message: {text: '/test' }} }
  let(:invoke) { client.handle(test_request) }

  describe 'client instance' do
    it 'has instance' do
      expect(client).to be_a(Telegram::Bot::Client)
    end

    it 'invoke cmd_test' do
      expect(invoke).to eq('cmd_test')
    end

    context 'has request without command' do
      let(:test_request) { {message: {text: 'some text' }}  }

      it 'invoke cmd_fallback' do
        expect(invoke).to eq('cmd_fallback')
      end
    end
  end
end

class RspecClientHandler
  include Telegram::Bot::ClientAccessors

  def cmd_test
    'cmd_test'
  end

  def cmd_fallback
    'cmd_fallback'
  end
end