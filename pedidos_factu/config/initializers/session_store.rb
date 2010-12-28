# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pedidos_factu_session',
  :secret      => '2a5985d19d355b89a3f4bed9f76bd0dc4ee4c9922db9741e1557484a06c44e8cb6cb449bcd61e730addfcadb52fd5e4cd9c1bf5ce909800ed7eda0113a8115cc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
