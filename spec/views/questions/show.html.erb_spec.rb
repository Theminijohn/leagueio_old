require 'spec_helper'

describe "questions/show" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :title => "Title",
      :body => "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Body/)
  end
end
