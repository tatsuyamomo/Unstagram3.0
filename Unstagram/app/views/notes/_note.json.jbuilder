json.extract! note, :id, :title, :image, :created_at, :updated_at
json.url note_url(note, format: :json)