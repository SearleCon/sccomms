require 'spec_helper'

describe "sccommands/edit" do
  before(:each) do
    @sccommand = assign(:sccommand, stub_model(Sccommand,
      :commandstr => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit sccommand form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sccommands_path(@sccommand), :method => "post" do
      assert_select "input#sccommand_commandstr", :name => "sccommand[commandstr]"
      assert_select "input#sccommand_description", :name => "sccommand[description]"
    end
  end
end
