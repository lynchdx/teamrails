json.extract! student, :id, :student_name, :student_lastname, :created_at, :updated_at
json.url student_url(student, format: :json)
