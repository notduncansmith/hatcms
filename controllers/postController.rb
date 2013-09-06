get '/post/:url' do 
  results = settings.postRepo.find({"url" => '/post/' + params[:url] })
  puts "********** RESULTS ***************\n"
  puts results
  # We create a Post instance to pass into the template 
  # to allow for dot.notation in templates 
  # as opposed to the much clunkier ["bracket-string"] notation
  # e.g. @post.body instead of @post["body"]
  @post = Post.new results.last 
  erb :post
end