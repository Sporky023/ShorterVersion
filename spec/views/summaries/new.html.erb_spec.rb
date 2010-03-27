require 'spec_helper'

describe "/summaries/new.html.erb" do
  include SummariesHelper

  before(:each) do
    assigns[:summary] = stub_model(Summary,
      :new_record? => true,
      :document_id => 1,
      :body => "value for body"
    )
  end

  it "renders new summary form" do
    render

    response.should have_tag("form[action=?][method=post]", summaries_path) do
      with_tag("input#summary_document_id[name=?]", "summary[document_id]")
      with_tag("textarea#summary_body[name=?]", "summary[body]")
    end
  end
end
