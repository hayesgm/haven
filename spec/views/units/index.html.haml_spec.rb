require 'rails_helper'

RSpec.describe "units/index", :type => :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
        :lessor_id => 1,
        :address => "Address",
        :unit_number => "Unit Number",
        :city => "City",
        :state => "State",
        :postal_code => "Postal Code",
        :total_rent => "9.99",
        :payment_day => 2
      ),
      Unit.create!(
        :lessor_id => 1,
        :address => "Address",
        :unit_number => "Unit Number",
        :city => "City",
        :state => "State",
        :postal_code => "Postal Code",
        :total_rent => "9.99",
        :payment_day => 2
      )
    ])
  end

  it "renders a list of units" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Unit Number".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
