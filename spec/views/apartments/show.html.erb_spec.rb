require 'rails_helper'

RSpec.describe "apartments/show", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      external_id: "External"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/External/)
  end
end
