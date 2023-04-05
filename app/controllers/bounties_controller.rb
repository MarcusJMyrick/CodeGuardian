class BountiesController < ApplicationController
  def index
    matching_bounties = Bounty.all

    @list_of_bounties = matching_bounties.order({ :created_at => :desc })

    render({ :template => "bounties/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_bounties = Bounty.where({ :id => the_id })

    @the_bounty = matching_bounties.at(0)

    render({ :template => "bounties/show.html.erb" })
  end

  def create
    the_bounty = Bounty.new
    the_bounty.bug_report_id = params.fetch("query_bug_report_id")
    the_bounty.company_id = params.fetch("query_company_id")
    the_bounty.amount = params.fetch("query_amount")
    the_bounty.status = params.fetch("query_status")

    if the_bounty.valid?
      the_bounty.save
      redirect_to("/bounties", { :notice => "Bounty created successfully." })
    else
      redirect_to("/bounties", { :alert => the_bounty.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_bounty = Bounty.where({ :id => the_id }).at(0)

    the_bounty.bug_report_id = params.fetch("query_bug_report_id")
    the_bounty.company_id = params.fetch("query_company_id")
    the_bounty.amount = params.fetch("query_amount")
    the_bounty.status = params.fetch("query_status")

    if the_bounty.valid?
      the_bounty.save
      redirect_to("/bounties/#{the_bounty.id}", { :notice => "Bounty updated successfully."} )
    else
      redirect_to("/bounties/#{the_bounty.id}", { :alert => the_bounty.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_bounty = Bounty.where({ :id => the_id }).at(0)

    the_bounty.destroy

    redirect_to("/bounties", { :notice => "Bounty deleted successfully."} )
  end
end
