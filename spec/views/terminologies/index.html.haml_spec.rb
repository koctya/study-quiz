require 'spec_helper'

describe "terminologies/index" do
  before(:each) do
    assign(:terminologies, [
      stub_model(Terminology,
        :term => "Term",
        :desc => "MyText"
      ),
      stub_model(Terminology,
        :term => "Term",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of terminologies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Term".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
