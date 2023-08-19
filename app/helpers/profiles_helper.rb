module ProfilesHelper
  def married_status(profile)
    profile.married ? "YES" : "NO"
  end
end
