class CompanyRepresentativesController < ApplicationController
  def index
    matching_company_representatives = CompanyRepresentative.all

    @list_of_company_representatives = matching_company_representatives.order({ :created_at => :desc })

    render({ :template => "company_representatives/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_company_representatives = CompanyRepresentative.where({ :id => the_id })

    @the_company_representative = matching_company_representatives.at(0)

    render({ :template => "company_representatives/show.html.erb" })
  end

  def create
    the_company_representative = CompanyRepresentative.new
    the_company_representative.user_id = params.fetch("query_user_id")
    the_company_representative.company_id = params.fetch("query_company_id")
    the_company_representative.name = params.fetch("query_name")

    if the_company_representative.valid?
      the_company_representative.save
      redirect_to("/company_representatives", { :notice => "Company representative created successfully." })
    else
      redirect_to("/company_representatives", { :alert => the_company_representative.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_company_representative = CompanyRepresentative.where({ :id => the_id }).at(0)

    the_company_representative.user_id = params.fetch("query_user_id")
    the_company_representative.company_id = params.fetch("query_company_id")
    the_company_representative.name = params.fetch("query_name")

    if the_company_representative.valid?
      the_company_representative.save
      redirect_to("/company_representatives/#{the_company_representative.id}", { :notice => "Company representative updated successfully."} )
    else
      redirect_to("/company_representatives/#{the_company_representative.id}", { :alert => the_company_representative.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_company_representative = CompanyRepresentative.where({ :id => the_id }).at(0)

    the_company_representative.destroy

    redirect_to("/company_representatives", { :notice => "Company representative deleted successfully."} )
  end
end
