class BugReportsController < ApplicationController
  def index
    matching_bug_reports = BugReport.all

    @list_of_bug_reports = matching_bug_reports.order({ :created_at => :desc })

    render({ :template => "bug_reports/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_bug_reports = BugReport.where({ :id => the_id })

    @the_bug_report = matching_bug_reports.at(0)

    render({ :template => "bug_reports/show.html.erb" })
  end

  def create
    the_bug_report = BugReport.new
    the_bug_report.project_id = params.fetch("query_project_id")
    the_bug_report.hacker_id = params.fetch("query_hacker_id")
    the_bug_report.title = params.fetch("query_title")
    the_bug_report.description = params.fetch("query_description")
    the_bug_report.severity_level = params.fetch("query_severity_level")
    the_bug_report.status = params.fetch("query_status")

    if the_bug_report.valid?
      the_bug_report.save
      redirect_to("/bug_reports", { :notice => "Bug report created successfully." })
    else
      redirect_to("/bug_reports", { :alert => the_bug_report.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_bug_report = BugReport.where({ :id => the_id }).at(0)

    the_bug_report.project_id = params.fetch("query_project_id")
    the_bug_report.hacker_id = params.fetch("query_hacker_id")
    the_bug_report.title = params.fetch("query_title")
    the_bug_report.description = params.fetch("query_description")
    the_bug_report.severity_level = params.fetch("query_severity_level")
    the_bug_report.status = params.fetch("query_status")

    if the_bug_report.valid?
      the_bug_report.save
      redirect_to("/bug_reports/#{the_bug_report.id}", { :notice => "Bug report updated successfully."} )
    else
      redirect_to("/bug_reports/#{the_bug_report.id}", { :alert => the_bug_report.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_bug_report = BugReport.where({ :id => the_id }).at(0)

    the_bug_report.destroy

    redirect_to("/bug_reports", { :notice => "Bug report deleted successfully."} )
  end
end
