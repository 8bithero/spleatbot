require 'spec_helper'

describe "payments/edit" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :user_tab => nil,
      :value => "9.99",
      :success => false
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do
      assert_select "input#payment_user_tab[name=?]", "payment[user_tab]"
      assert_select "input#payment_value[name=?]", "payment[value]"
      assert_select "input#payment_success[name=?]", "payment[success]"
    end
  end
end
