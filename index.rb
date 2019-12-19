# sydney_campus_location = " 3/118 Walker St, North Sydney, 2060"

# melbourne_campus_location = "8/120 Spencer Street, Melbourne Victoria"

# brisbane_campus_lcation = "60 Gloucester St, Spring Hill QLD 4000"

# sydney_students = [
#   {
#     name: "Alex",
#     age: 31,
#     id: "CAS011914",
#   },
#   {
#     name: "Luke",
#     age: 25,
#     id: "CAS011915",
#   },
# ]

# melbstudents = [
#   {
#     name: "Drew",
#     age: 35,
#     id: "CAM011920",
#   },
#   {
#     name: "Sarah",
#     age: 20,
#     id: "CAM01125",
#   },
# ]

class Campus
  def initialize(location)
    @location = location
  end

  def location
    @location
  end

  def location=(new_location)
    @location = new_location
  end
end

syd_campus = Campus.new("3/118 Walker St, North Sydney, 2060")
melb_campus = Campus.new("8/120 Spencer Street, Melbourne Victoria")
bris_campus = Campus.new("60 Gloucester St, Spring Hill QLD 4000")

puts syd_campus.location
puts melb_campus.location
puts bris_campus.location

syd_campus.location = "5/118 Walker St, North Sydney, 2060"
puts syd_campus.location
