require 'rails_helper'

RSpec.describe "units/show", :type => :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :lessor_id => 1,
      :address => "Address",
      :unit_number => "Unit Number",
      :city => "City",
      :state => "State",
      :postal_code => "Postal Code",
      :total_rent => "9.99",
      :payment_day => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Unit Number/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
