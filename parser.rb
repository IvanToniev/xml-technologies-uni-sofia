require_relative 'project'
require_relative 'projects_xml_generator'

generator = ProjectsXMLGenerator.new
generator.build_base

puts 'How much projects do you want to make?'
projects_count = gets.chomp.to_i

while(projects_count > 0) do
  project = Project.new

  puts 'Enter course name: '
  project.course_name = gets.chomp

  puts 'Enter project requirements: '
  project.requirements = gets.chomp

  puts 'Enter technologies, please separate with commas'
  project.technologies = gets.chomp.split(',')

  puts 'Enter theme'
  project.theme = gets.chomp

  puts 'Enter timeline: start_date,end_date'
  project.timeline = gets.chomp.split(',')

  puts 'Enter description'
  project.description = gets.chomp

  project.set_formats
  generator.add_project_to_base project

  projects_count=(projects_count-1)
end

generator.add_ending
puts generator.spit_xml
generator.generate_xml_file generator.spit_xml

