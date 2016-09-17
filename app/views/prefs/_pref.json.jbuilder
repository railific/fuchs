json.extract! pref, :id, :language, :timezone, :date_format, :email, :user_id, :created_at, :updated_at
json.url pref_url(pref, format: :json)