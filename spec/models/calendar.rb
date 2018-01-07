require 'rails_helper'

RSpec.describe Calendar, :type => :model do
  it "validates presence of start_date" do
    expect(Calendar.new).to_not be_valid
  end

end