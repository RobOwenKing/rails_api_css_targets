require 'rails_helper'

RSpec.describe Challenge, type: :model do
  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:html) }
  it { should validate_presence_of(:css) }
end
