require 'spec_helper'

describe "tabs/index" do
  before(:each) do
    assign(:tabs, [
      stub_model(Tab,
        :venue => nil
      ),
      stub_model(Tab,
        :venue => nil
      )
    ])
  end

  it "renders a list of tabs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
