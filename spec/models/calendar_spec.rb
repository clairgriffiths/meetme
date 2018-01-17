require 'rails_helper'

RSpec.describe Calendar, :type => :model do


  # it "validates presence of start_date" do
  #   expect(Calendar.new(start_date: nil)).to_not be_valid
  # end

  # it "validates presence of end_date" do
  #   expect(Calendar.new(end_date: nil)).to_not be_valid
  # end

  # it "validates presence of at least one days_of_week" do
  #   # Form is saving an empty string so this will always pass
  #   # Either this needs to be taken out of form or this test needs
  #   # to be changed to deal with this
  #   expect(Calendar.new(days_of_week: [])).to_not be_valid
  # end

  describe ".add_days" do

    before do
      @calendar = create(:calendar)
    end

    context "when Mondays is selected over a 1 week period" do
      it "associates a calendar day" do
        monday = create(:day)
        allow(Day).to receive(:find_by).and_return(monday)

        @calendar.add_days
        expect(@calendar.days.length).to eq(1)
      end
    end
  end

end