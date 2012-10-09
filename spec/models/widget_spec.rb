require 'spec_helper'

describe Widget do
  it "removes widget on rejection" do
    widget = Widget.create!

    expect do
      widget.reject!
    end.to change { described_class.count }.by(-1)

    GC.start
  end
end
