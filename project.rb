class Project
  attr_accessor :course_name, :requirements, :technologies, :theme, :timeline, :description

  def set_formats
    format_technologies
    format_timeline
  end

  private
  def format_technologies
    new_format = ''
    @technologies.each do |technology|
      new_format << "<technology_name>#{technology}</technology_name> \n"
    end

    self.technologies = new_format.chomp
  end

  def format_timeline
    new_format = ''
    new_format << "<start_date>#{@timeline.first}</start_date> \n"
    new_format << "<end_date>#{@timeline.last}</end_date> \n"

    self.timeline = new_format.chomp
  end
end