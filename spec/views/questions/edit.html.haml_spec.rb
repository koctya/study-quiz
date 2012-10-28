require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :section => "MyString",
      :type => "",
      :statement => "MyText",
      :choices => "MyText",
      :answer => "MyText"
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path(@question), :method => "post" do
      assert_select "input#question_section", :name => "question[section]"
      assert_select "input#question_type", :name => "question[type]"
      assert_select "textarea#question_statement", :name => "question[statement]"
      assert_select "textarea#question_choices", :name => "question[choices]"
      assert_select "textarea#question_answer", :name => "question[answer]"
    end
  end
end
