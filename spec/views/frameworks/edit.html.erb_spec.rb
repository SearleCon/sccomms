require 'spec_helper'

describe "frameworks/edit" do
  before(:each) do
    @framework = assign(:framework, stub_model(Framework,
      :name => "MyString",
      :description => "MyText",
      :version => "MyString"
    ))
  end

  it "renders the edit framework form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => frameworks_path(@framework), :method => "post" do
      assert_select "input#framework_name", :name => "framework[name]"
      assert_select "textarea#framework_description", :name => "framework[description]"
      assert_select "input#framework_version", :name => "framework[version]"
    end
  end
end
