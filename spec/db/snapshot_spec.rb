require 'spec_helper'

describe Db::Snapshot do
  it 'has a version number' do
    expect(Db::Snapshot::VERSION).not_to be nil
  end

  describe '.list' do
    it 'returns the correct system command' do
      expect_any_instance_of(Kernel)
        .to receive(:system)
        .with('ls -la -tr dump/')

        Db::Snapshot.list
    end
  end

  describe '.create' do
    context 'when snapshot_name is not an empty string' do
      it 'returns the correct system command' do
        expect_any_instance_of(Kernel)
          .to receive(:system)

        Db::Snapshot.create("HELLO")
      end
    end
  end

  describe '.travel_to' do
    it 'calls the restore method' do
      expect(described_class)
        .to receive(:restore)
        .with('20160612_2115')

      Db::Snapshot.travel_to('20160612_2115')
    end
  end
end
