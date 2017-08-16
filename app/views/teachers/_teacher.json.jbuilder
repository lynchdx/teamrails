json.extract! teacher, :id, :teacher_name, :teacher_lastname, :teacher_mail, :teacher_password, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
