# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_foreign_name_exp_session',
  :secret      => 'a1b39be86c48fb60a5b075ddf85294b92c90bbbddab4b4cf6bc3bfdc4d87184101af7a5d958da1622e0a8ffb395afd7e27d2ce1d6ef9156395022b4902cf2f42'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
