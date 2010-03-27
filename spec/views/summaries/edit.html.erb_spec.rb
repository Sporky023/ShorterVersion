require 'spec_helper'

describe "/summaries/edit.html.erb" do
  include SummariesHelper

  before(:each) do
    assigns[:summary] = @summary = stub_model(Summary,
      :new_record? => false,
      :document_id => 1,
      :body => "value for body"
    )
  end

  it "renders the edit summary form" do
    render

    response.should have_tag("form[action=#{summary_path(@summary)}][method=post]") do
      with_tag('input#summary_document_id[name=?]', "summary[document_id]")
      with_tag('textarea#summary_body[name=?]', "summary[body]")
    end
  end
end
