require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        external_id: "External"
      ),
      Apartment.create!(
        external_id: "External"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", text: "External".to_s, count: 2
  end
end
