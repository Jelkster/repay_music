class AuthInfo
  attr_reader :auth

  def initialize(auth)
    @auth = auth
  end

  def first_name
    auth.info.first_name
  end

  def last_name
    auth.info.last_name
  end

  def email
    auth.info.email
  end

  def image_url
    auth.info.image
  end
end
