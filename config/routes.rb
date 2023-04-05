Rails.application.routes.draw do

  get("/", { :controller => "user_profiles", :action => "home" })

  # Routes for the Skill resource:

  # CREATE
  post("/insert_skill", { :controller => "skills", :action => "create" })
          
  # READ
  get("/skills", { :controller => "skills", :action => "index" })
  
  get("/skills/:path_id", { :controller => "skills", :action => "show" })
  
  # UPDATE
  
  post("/modify_skill/:path_id", { :controller => "skills", :action => "update" })
  
  # DELETE
  get("/delete_skill/:path_id", { :controller => "skills", :action => "destroy" })

  #------------------------------

  # Routes for the Message resource:

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })
          
  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  
  get("/messages/:path_id", { :controller => "messages", :action => "show" })
  
  # UPDATE
  
  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })
  
  # DELETE
  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  # Routes for the Bug report resource:

  # CREATE
  post("/insert_bug_report", { :controller => "bug_reports", :action => "create" })
          
  # READ
  get("/bug_reports", { :controller => "bug_reports", :action => "index" })
  
  get("/bug_reports/:path_id", { :controller => "bug_reports", :action => "show" })
  
  # UPDATE
  
  post("/modify_bug_report/:path_id", { :controller => "bug_reports", :action => "update" })
  
  # DELETE
  get("/delete_bug_report/:path_id", { :controller => "bug_reports", :action => "destroy" })

  #------------------------------

  # Routes for the Bounty resource:

  # CREATE
  post("/insert_bounty", { :controller => "bounties", :action => "create" })
          
  # READ
  get("/bounties", { :controller => "bounties", :action => "index" })
  
  get("/bounties/:path_id", { :controller => "bounties", :action => "show" })
  
  # UPDATE
  
  post("/modify_bounty/:path_id", { :controller => "bounties", :action => "update" })
  
  # DELETE
  get("/delete_bounty/:path_id", { :controller => "bounties", :action => "destroy" })

  #------------------------------

  # Routes for the Company representative resource:

  # CREATE
  post("/insert_company_representative", { :controller => "company_representatives", :action => "create" })
          
  # READ
  get("/company_representatives", { :controller => "company_representatives", :action => "index" })
  
  get("/company_representatives/:path_id", { :controller => "company_representatives", :action => "show" })
  
  # UPDATE
  
  post("/modify_company_representative/:path_id", { :controller => "company_representatives", :action => "update" })
  
  # DELETE
  get("/delete_company_representative/:path_id", { :controller => "company_representatives", :action => "destroy" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  post("/insert_company", { :controller => "companies", :action => "create" })
          
  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  
  get("/companies/:path_id", { :controller => "companies", :action => "show" })
  
  # UPDATE
  
  post("/modify_company/:path_id", { :controller => "companies", :action => "update" })
  
  # DELETE
  get("/delete_company/:path_id", { :controller => "companies", :action => "destroy" })

  #------------------------------

  # Routes for the Project resource:

  # CREATE
  post("/insert_project", { :controller => "projects", :action => "create" })
          
  # READ
  get("/projects", { :controller => "projects", :action => "index" })
  
  get("/projects/:path_id", { :controller => "projects", :action => "show" })
  
  # UPDATE
  
  post("/modify_project/:path_id", { :controller => "projects", :action => "update" })
  
  # DELETE
  get("/delete_project/:path_id", { :controller => "projects", :action => "destroy" })

  #------------------------------

  # Routes for the User profile resource:

  # CREATE
  post("/insert_user_profile", { :controller => "user_profiles", :action => "create" })
          
  # READ
  get("/user_profiles", { :controller => "user_profiles", :action => "index" })
  
  get("/user_profiles/:path_id", { :controller => "user_profiles", :action => "show" })
  
  # UPDATE
  
  post("/modify_user_profile/:path_id", { :controller => "user_profiles", :action => "update" })
  
  # DELETE
  get("/delete_user_profile/:path_id", { :controller => "user_profiles", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
