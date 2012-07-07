require 'spec_helper'

describe "sccommands/new" do
  before(:each) do
    assign(:sccommand, stub_model(Sccommand,
      :commandstr => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new sccommand form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sccommands_path, :method => "post" do
      assert_select "input#sccommand_commandstr", :name => "sccommand[commandstr]"
      assert_select "input#sccommand_description", :name => "sccommand[description]"
    end
  end
end
