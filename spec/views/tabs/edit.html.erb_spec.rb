require 'spec_helper'

describe "tabs/edit" do
  before(:each) do
    @tab = assign(:tab, stub_model(Tab,
      :venue => nil
    ))
  end

  it "renders the edit tab form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tab_path(@tab), "post" do
      assert_select "input#tab_venue[name=?]", "tab[venue]"
    end
  end
end
