# Admin Routes
get '/admin' do
  
end

get '/admin/post/new' do
  erb :newPost, :layout => :admin_layout
end

get '/admin/posts/all' do
  @posts = settings.postRepo.find({"url" => {"$gt" => ""}})
  erb :allPosts, :layout => :admin_layout
end

post '/admin/post/new' do
  puts "************** PARAMS ***************\n"
  puts params
  @post = Post.new params
  settings.postRepo.create(@post)
  
  redirect to @post.url
end