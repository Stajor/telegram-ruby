RSpec.describe Telegram::Bot do
  it 'has a version number' do
    expect(Telegram::VERSION).not_to be nil
  end

  it 'bot works' do
    expect(described_class).to be
  end
end
