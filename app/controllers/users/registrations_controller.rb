# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  # before_action :configure_permitted_parameters



  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    puts "\n"
    puts params[:user]
    puts "\n"
    puts params[:user][:members][:first_name]
    puts "\n"
    puts params[:user][:cars][:car_displacement_1]
    puts "\n"

    # member = Member.new()
    # member.first_name = params[:user][:members][:first_name]
    logger.debug params[:user][:members][:first_name]
    member = Member.create(first_name: params[:user][:members][:first_name])
    car = Car.create(car_displacement_1: params[:user][:cars][:car_displacement_1])

    super
  end



  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
