class ProjectsXMLGenerator
  attr_accessor :base

  def initialize
    @base = []
  end

  def build_base
    @base << '<projects  xmlns:projects="http://www.project-template.com/projects/projects">'
  end

  def add_project_to_base project
    @base << "\n <project xmlns:project='http://www.project-template.com/projects/project'>
      <course>
        <course-name>
          #{project.course_name}
        </course-name>
      </course>
      <project-requirements>
        <project-requirement>
          #{project.requirements}
        </project-requirement>
      </project-requirements>
      <technologies>
          <technology>
            #{project.technologies}
          </technology>
      </technologies>
      <theme>#{project.theme}</theme>
      <timeline>
        #{project.timeline}
      </timeline>
      <description>
          #{project.description}
      </description>
    </project> \n"
  end

  def add_ending
    @base << "</projects> \n"
  end

  def spit_xml
    @base.join
  end

  def generate_xml_file xml_as_string
    file = File.new("project_file.xml", "w+")
    file.write(xml_as_string)
    file.close
  end
end