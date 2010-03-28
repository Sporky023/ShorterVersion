class SummaryVotesController < ApplicationController
  # GET /summary_votes
  # GET /summary_votes.xml
  def index
    @summary_votes = SummaryVote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @summary_votes }
    end
  end

  # GET /summary_votes/1
  # GET /summary_votes/1.xml
  def show
    @summary_vote = SummaryVote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @summary_vote }
    end
  end

  # GET /summary_votes/new
  # GET /summary_votes/new.xml
  def new
    @summary_vote = SummaryVote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @summary_vote }
    end
  end

  # GET /summary_votes/1/edit
  def edit
    @summary_vote = SummaryVote.find(params[:id])
  end

  # POST /summary_votes
  # POST /summary_votes.xml
  def create
    @summary_vote = SummaryVote.new(params[:summary_vote])
    
    respond_to do |format|
      if @summary_vote.save
        flash[:notice] = 'SummaryVote was successfully created.'
        format.html { redirect_to(@summary_vote.summary.document) }
        format.xml  { render :xml => @summary_vote, :status => :created, :location => @summary_vote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @summary_vote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /summary_votes/1
  # PUT /summary_votes/1.xml
  def update
    @summary_vote = SummaryVote.find(params[:id])

    respond_to do |format|
      if @summary_vote.update_attributes(params[:summary_vote])
        flash[:notice] = 'SummaryVote was successfully updated.'
        format.html { redirect_to(@summary_vote) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @summary_vote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /summary_votes/1
  # DELETE /summary_votes/1.xml
  def destroy
    @summary_vote = SummaryVote.find(params[:id])
    @summary_vote.destroy

    respond_to do |format|
      format.html { redirect_to(summary_votes_url) }
      format.xml  { head :ok }
    end
  end
end
