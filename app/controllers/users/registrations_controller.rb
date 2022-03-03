# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  #  def new
  #    super
  #    @member = Member.new
  #  end

  # POST /resource
   def create
     super
     member = Member.create(first_name: params[:user][:members][:first_name],
                            family_name: params[:user][:members][:family_name],
                            first_name_kana: params[:user][:members][:first_name_kana],
                            family_name_kana: params[:user][:members][:family_name_kana],
                            birthday_year: params[:user][:members][:birthday_year],
                            birthday_month: params[:user][:members][:birthday_month],
                            birthday_day: params[:user][:members][:birthday_day],
                            gender: params[:user][:members][:gender],
                            landline_number_first: params[:user][:members][:landline_number_first],
                            landline_number_second: params[:user][:members][:landline_number_second],
                            landline_number_third: params[:user][:members][:landline_number_third],
                            telephone_number_first: params[:user][:members][:telephone_number_first],
                            telephone_number_second: params[:user][:members][:telephone_number_second],
                            telephone_number_third: params[:user][:members][:telephone_number_third],
                            post_code: params[:user][:members][:post_code],
                            address: params[:user][:members][:address],
                            municipalities: params[:user][:members][:municipalities])
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
