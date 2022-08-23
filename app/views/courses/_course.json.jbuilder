json.extract! course, :id, :course_name, :course_type, :price, :author_name, :summary, :created_at, :updated_at
json.url course_url(course, format: :json)
