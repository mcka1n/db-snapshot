require 'spec_helper'

describe Db::Snapshot do
  it 'has a version number' do
    expect(Db::Snapshot::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
