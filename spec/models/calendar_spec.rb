require 'rails_helper'

RSpec.describe Calendar, :type => :model do


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

    let(:first_monday) { create(:day, :first_monday) }
    let(:second_monday) {create(:day, :second_monday) }
    let(:first_friday) { create(:day, :first_friday) }
    let(:second_friday) { create(:day, :second_friday) }

    context "when Mondays is selected over a 1 week period" do

      let(:calendar) { create(:calendar, :one_week_monday) }

      before do
        allow(Day).to receive(:find_by).and_return(first_monday)
        calendar.add_days
      end

      it "associates a calendar day" do
        expect(calendar.days.length).to eq(1)
      end

      it "associates the first monday" do
        expect(calendar.days.first).to eq(first_monday)
      end
    end

    context "when Fridays is selected over a 2 week period" do

      let(:calendar) { create(:calendar, :two_week_friday) }

      before do
        allow(Day).to receive(:find_by).and_return(first_friday, second_friday)
        calendar.add_days
      end

      it "associates 2 calendar days" do
        expect(calendar.days.length).to eq(2)
      end

      it "associates the first two fridays" do
        expect(calendar.days.first).to eq(first_friday)
        expect(calendar.days.last).to eq(second_friday)
      end
    end

    context "when Mondays and Fridays is selected over a 1 week period" do

      let(:calendar) { create(:calendar, :two_week_monday_friday) }

      before do
        allow(Day).to receive(:find_by).and_return(
          first_monday,
          first_friday,
          second_monday,
          second_friday)

        calendar.add_days
      end

      it "associates 2 calendar days" do
        expect(calendar.days.length).to eq(4)
      end

      it "associates the first two fridays" do
        expect(calendar.days[0]).to eq(first_monday)
        expect(calendar.days[1]).to eq(first_friday)
        expect(calendar.days[2]).to eq(second_monday)
        expect(calendar.days[3]).to eq(second_friday)
      end
    end
  end

end