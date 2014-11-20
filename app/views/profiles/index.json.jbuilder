json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :first_name, :last_name, :phone, :email, :address, :institution, :job, :webpage, :citation_name, :areas_of_interest, :additional_information
  json.url profile_url(profile, format: :json)
end
