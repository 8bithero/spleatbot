require 'spec_helper'

describe "venues/new" do
  before(:each) do
    assign(:venue, stub_model(Venue,
      :name => "MyString",
      :account => "MyString"
    ).as_new_record)
  end

  it "renders new venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", venues_path, "post" do
      assert_select "input#venue_name[name=?]", "venue[name]"
      assert_select "input#venue_account[name=?]", "venue[account]"
    end
  end
end
