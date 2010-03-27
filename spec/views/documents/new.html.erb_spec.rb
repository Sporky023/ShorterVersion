require 'spec_helper'

describe "/documents/new.html.erb" do
  include DocumentsHelper

  before(:each) do
    assigns[:document] = stub_model(Document,
      :new_record? => true,
      :name => "value for name",
      :body => "value for body",
      :original_url => "value for original_url"
    )
  end

  it "renders new document form" do
    render

    response.should have_tag("form[action=?][method=post]", documents_path) do
      with_tag("input#document_name[name=?]", "document[name]")
      with_tag("textarea#document_body[name=?]", "document[body]")
      with_tag("input#document_original_url[name=?]", "document[original_url]")
    end
  end
end
