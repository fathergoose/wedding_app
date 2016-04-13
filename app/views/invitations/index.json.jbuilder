json.array!(@invitations) do |invitation|
  json.extract! invitation, :id, :has_plus_one, :guest_id
  json.url invitation_url(invitation, format: :json)
end
