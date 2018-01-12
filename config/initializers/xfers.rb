require "xfers"
Xfers.set_api_key 'Ackz_EtxBHBjfupxnPnG9WFijd3qTjkN5YF9KbJTLX8'
Xfers.set_id_sandbox

# Retrieve user information
begin
  resp = Xfers::User.retrieve
  puts resp[:first_name]
  puts resp[:last_name]
  puts resp[:available_balance]
rescue Xfers::XfersError => e
  puts e.to_s
end