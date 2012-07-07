require 'spec_helper'

describe "frameworks/new" do
  before(:each) do
    assign(:framework, stub_model(Framework,
      :name => "MyString",
      :description => "MyText",
      :version => "MyString"
    ).as_new_record)
  end

  it "renders new framework form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => frameworks_path, :method => "post" do
      assert_select "input#framework_name", :name => "framework[name]"
      assert_select "textarea#framework_description", :name => "framework[description]"
      assert_select "input#framework_version", :name => "framework[version]"
    end
  end
end
