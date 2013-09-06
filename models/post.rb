require 'redcarpet'
include Redcarpet

class Post
  attr_accessor :title, :body, :raw, :author, :date, :tags, :html, :url, :id
  
  def initialize (args)
    @title = args["title"]
    @raw = args["raw"]
    @body = render(@raw)
    @author = args["author"]  
    @date = args["date"]
    @tags = args["tags"]
    @url = '/post/' + (args["url"] ||= @title.gsub(" ","_").downcase)
    @title.strip!
    @body.strip!
    @raw.strip!
    puts "********* NEW POST ************\n"
    puts self.to_h
  end  

  def render(text)
    renderer = Render::HTML.new(:hard_wrap => true)
    options = [
      renderer,
      :autolink => true, 
      :space_after_headers => false
    ]
    markdown = Markdown.new(*options)
    markdown.render(text)
	end

  def to_h
    hash = {}
    self.instance_variables.each do |var| 
      hash[var.to_s.delete("@")] = self.instance_variable_get(var) 
    end
    hash
  end

end #end class


# Posts:
# - Title
# - Body text (markdown)
# - Author
# - Date
# - Tags


# TODO
# - Excerpts
# - Custom metadata (what this would be, idk)