require 'spec_helper'

describe "terminologies/new" do
  before(:each) do
    assign(:terminology, stub_model(Terminology,
      :term => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new terminology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => terminologies_path, :method => "post" do
      assert_select "input#terminology_term", :name => "terminology[term]"
      assert_select "textarea#terminology_desc", :name => "terminology[desc]"
    end
  end
end
