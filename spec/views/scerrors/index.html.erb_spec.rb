require 'spec_helper'

describe "scerrors/index" do
  before(:each) do
    assign(:scerrors, [
      stub_model(Scerror,
        :actualerror => "MyText",
        :fixnote => "MyText"
      ),
      stub_model(Scerror,
        :actualerror => "MyText",
        :fixnote => "MyText"
      )
    ])
  end

  it "renders a list of scerrors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
