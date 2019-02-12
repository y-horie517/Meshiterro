class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameteres, if: :devise_controller?
	before_action :authenticate_user!

	protected

	def configure_permitted_parameteres
		# ユーザ登録（sign_up）の時に、ユーザ名(name)のデータ操作を許可する。
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end
end
