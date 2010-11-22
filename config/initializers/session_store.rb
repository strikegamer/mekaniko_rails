# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mekaniko_session',
  :secret      => '92e2c4e204b8f198f19fd47a9e9983cb395806692f8868d4c2e21eab4a4625616a9a911260cd2531cc6823c6da1647cc0a56c90fcc9389e655040dc0909af9d7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
