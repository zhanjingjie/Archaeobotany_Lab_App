module SessionsHelper
	# used in sessions controller and other views
	def sign_in(user)
		cookies.permanent[:remember_token] = user.remember_token
		self.current_user = user
	end

	# check if the user is signed in
	def signed_in?
		!current_user.nil?
	end

	# custom setter, save user into an ivar
	def current_user=(user)
		@current_user = user
	end

	# custom getter, will set the current_user var if it's nil.
	def current_user
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end
end
