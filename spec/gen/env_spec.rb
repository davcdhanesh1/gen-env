require 'spec_helper'

describe Gen::Env do
  it 'has a version number' do
    expect(Gen::Env::VERSION).to eq "0.2.1"
  end
end
