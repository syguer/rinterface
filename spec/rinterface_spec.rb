require 'spec_helper'

describe Rinterface do
  it 'has a version number' do
    expect(Rinterface::VERSION).not_to be nil
  end

  describe '.implements' do
    before do
      class TestInterface < Rinterface::Base
        abstract :foo
      end
    end

    context "when class implement abstract method" do
      subject do
        class Hoge
          implements TestInterface
        end
      end

      it { expect{ subject }.to raise_error(NotImplementedError, "class Hoge must implement foo")}
    end

    context "when class implement abstract method" do
      subject do
        class Hoge
          implements TestInterface

          def foo
            "bar"
          end
        end
      end

      it { expect{ subject }.not_to raise_error }
    end
  end
end
