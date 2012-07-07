require 'spec_helper'

describe "frameworks/index" do
  before(:each) do
    assign(:frameworks, [
      stub_model(Framework,
        :name => "Name",
        :description => "MyText",
        :version => "Version"
      ),
      stub_model(Framework,
        :name => "Name",
        :description => "MyText",
        :version => "Version"
      )
    ])
  end

  it "renders a list of frameworks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Version".to_s, :count => 2
  end
end
