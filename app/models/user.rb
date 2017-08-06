class User < ApplicationRecord
  TEMP_EMAIL_PREFIX = 'change@me'.freeze
  TEMP_EMAIL_REGEX = /\Achange@me/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, and :timeoutable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_format_of :email, without: TEMP_EMAIL_REGEX, on: :update

  class << self
    # TODO: add test
    def find_for_oauth(auth, signed_in_resource = nil)
      # # Get the identity and user if they exist
      # identity = Identity.find_for_oauth(auth)

      # # If a signed_in_resource is provided it always overrides the existing user
      # # to prevent the identity being locked with accidentally created accounts.
      # # Note that this may leave zombie accounts (with no associated identity) which
      # # can be cleaned up at a later date.
      # user = signed_in_resource ? signed_in_resource : identity.user

      # # Create the user if needed
      # if user.nil?
      #   # Get the existing user by email if the provider gives us a verified email.
      #   # If no verified email was provided we assign a temporary email and ask the
      #   # user to verify it on the next step via UsersController.finish_signup
      #   email_is_verified = auth.info.email
      #   email = auth.info.email if email_is_verified
      #   user = User.where(:email => email).take if email
      # service = "#{auth.provider}_auth_info".classify.constantize.new(auth)
      binding.pry

      # class FacebookAuthInfo < AuthInfo

      #   # Create the user if it's a new registration
      #   if user.nil?
      #     user = User.new(
      #       # name: auth.extra.raw_info.name,
      #       first_name: service.first_name,
      #       last_name: service.last_name,
      #       email: email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
      #       password: Devise.friendly_token[0,20]
      #     )
      #     user.skip_confirmation!
      #     user.save!
      #   end
      # end

      # # Associate the identity with the user if needed
      # if identity.user != user
      #   identity.user = user
      #   identity.save!
      # end
      # user

      User.new
    end
  end

  def email_verified?
    email&.!~ TEMP_EMAIL_REGEX
  end
end
