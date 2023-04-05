class UserProfilesController < ApplicationController
  def home
    
    render({ :template => "users/home.html.erb" })
  end
  def index
    matching_user_profiles = UserProfile.all

    @list_of_user_profiles = matching_user_profiles.order({ :created_at => :desc })

    render({ :template => "user_profiles/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_user_profiles = UserProfile.where({ :id => the_id })

    @the_user_profile = matching_user_profiles.at(0)

    render({ :template => "user_profiles/show.html.erb" })
  end

  def create
    the_user_profile = UserProfile.new
    the_user_profile.name = params.fetch("query_name")
    the_user_profile.user_id = params.fetch("query_user_id")
    the_user_profile.bio = params.fetch("query_bio")
    the_user_profile.image = params.fetch("query_image")

    if the_user_profile.valid?
      the_user_profile.save
      redirect_to("/user_profiles", { :notice => "User profile created successfully." })
    else
      redirect_to("/user_profiles", { :alert => the_user_profile.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_user_profile = UserProfile.where({ :id => the_id }).at(0)

    the_user_profile.name = params.fetch("query_name")
    the_user_profile.user_id = params.fetch("query_user_id")
    the_user_profile.bio = params.fetch("query_bio")

    if the_user_profile.valid?
      the_user_profile.save
      redirect_to("/user_profiles/#{the_user_profile.id}", { :notice => "User profile updated successfully."} )
    else
      redirect_to("/user_profiles/#{the_user_profile.id}", { :alert => the_user_profile.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user_profile = UserProfile.where({ :id => the_id }).at(0)

    the_user_profile.destroy

    redirect_to("/user_profiles", { :notice => "User profile deleted successfully."} )
  end
end
