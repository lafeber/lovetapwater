# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lovetapwater.org_session',
  :secret      => '236bae60feaff51295b15c54653e4165da1a94b48a53e2a5707d7031765c3507ae0f8f6635c6c1f0065a5016060e67be396839c61a6ea8117db616589b40074b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
