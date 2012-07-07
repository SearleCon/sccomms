require 'spec_helper'

describe "sccommands/index" do
  before(:each) do
    assign(:sccommands, [
      stub_model(Sccommand,
        :commandstr => "Commandstr",
        :description => "Description"
      ),
      stub_model(Sccommand,
        :commandstr => "Commandstr",
        :description => "Description"
      )
    ])
  end

  it "renders a list of sccommands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Commandstr".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
