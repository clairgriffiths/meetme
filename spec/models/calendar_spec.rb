require 'rails_helper'

RSpec.describe Calendar, :type => :model do
  before(:each) do
    @calendar = create(:calendar)
  end
  it "validates presence of start_date" do
    expect(Calendar.new(start_date: nil)).to_not be_valid
  end

  it "validates presence of end_date" do
    expect(Calendar.new(end_date: nil)).to_not be_valid
  end

  it "validates presence of at least one days_of_week" do
    # Form is saving an empty string so this will always pass
    # Either this needs to be taken out of form or this test needs
    # to be changed to deal with this
    expect(Calendar.new(days_of_week: [])).to_not be_valid
  end

   describe ".add_days" do


    # Stupid error:
    # ActiveRecord::AssociationTypeMismatch: Day(#20870920) expected, got NilClass(#8216580)

    context "when Mondays is selected over a 2 week period" do
      it "creates 2 calendar days" do
        monday = create(:day)
        day = mock_model(Day)
        allow(Day).to receive(:find_by) {day}
        @calendar.add_days
        expect(@calendar.days.length).to eq(2)
      end
    end
  end

end