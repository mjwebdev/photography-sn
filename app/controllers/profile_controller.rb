class ProfileController < ApplicationController
  def show
  	@user = User.find_by_profile_name(params[:id])
  	if @user
  		@statuses = Status.all
  		render action: :show
  	else
  		render file: 'piublic/404', status: 404, formats: [:html]

  end
end
