require 'spec_helper'

describe Species do
  it { should validate_presence_of :name}
  it { should validate_presence_of :kind}
end
