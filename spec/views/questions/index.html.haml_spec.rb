require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :section => "Section",
        :type => "Type",
        :statement => "MyText",
        :choices => "MyText",
        :answer => "MyText"
      ),
      stub_model(Question,
        :section => "Section",
        :type => "Type",
        :statement => "MyText",
        :choices => "MyText",
        :answer => "MyText"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Section".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
