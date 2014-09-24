require 'rails_helper'

RSpec.describe "units/edit", :type => :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :lessor_id => 1,
      :address => "MyString",
      :unit_number => "MyString",
      :city => "MyString",
      :state => "MyString",
      :postal_code => "MyString",
      :total_rent => "9.99",
      :payment_day => 1
    ))
  end

  it "renders the edit unit form" do
    render

    assert_select "form[action=?][method=?]", unit_path(@unit), "post" do

      assert_select "input#unit_lessor_id[name=?]", "unit[lessor_id]"

      assert_select "input#unit_address[name=?]", "unit[address]"

      assert_select "input#unit_unit_number[name=?]", "unit[unit_number]"

      assert_select "input#unit_city[name=?]", "unit[city]"

      assert_select "input#unit_state[name=?]", "unit[state]"

      assert_select "input#unit_postal_code[name=?]", "unit[postal_code]"

      assert_select "input#unit_total_rent[name=?]", "unit[total_rent]"

      assert_select "input#unit_payment_day[name=?]", "unit[payment_day]"
    end
  end
end
