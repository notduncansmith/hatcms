#Post Repository

class PostRepo

	def initialize (db)
		@db = db["posts"]
	end

	def find (args = {})
		puts "*********** QUERY **************\n"
		puts args
		results = @db.find(args).to_a
		puts "\n*********** RESULTS ************\n"
		puts results
		results
	end

	def create (post)
		@db.insert(post.to_h)
	end

	def update (post)
    @db.update({"_id" => post._id}, post)
  end
end