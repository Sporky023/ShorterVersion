require 'spec_helper'

describe "/documents/edit.html.erb" do
  include DocumentsHelper

  before(:each) do
    assigns[:document] = @document = stub_model(Document,
      :new_record? => false,
      :name => "value for name",
      :body => "value for body",
      :original_url => "value for original_url"
    )
  end

  it "renders the edit document form" do
    render

    response.should have_tag("form[action=#{document_path(@document)}][method=post]") do
      with_tag('input#document_name[name=?]', "document[name]")
      with_tag('textarea#document_body[name=?]', "document[body]")
      with_tag('input#document_original_url[name=?]', "document[original_url]")
    end
  end
end
