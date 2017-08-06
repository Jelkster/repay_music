class TwitterAuthInfo < AuthInfo
  def first_name
    split_name.first
  end

  def last_name
    split_name.last
  end

  private

  def split_name
    name = auth.info.name
    if name.include?(' ')
      first_name = name.split.first
      last_name  = name.split[1..-1].join(' ')
    else
      first_name = name
      last_name  = nil
    end
    [first_name, last_name]
  end
end
