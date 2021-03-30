# Lets create structs:
User = Struct.new(:name, :phone)
Post = Struct.new(:title, :body, :user)

# Lets create user:
muhammad = User.new('muhammad', '123 123')

# To defining a variable:
post1 = Post.new('post with a user', 'post1 body', muhammad)
post2 = Post.new('post without a user', 'post2 body', nil)

# Create array of posts:
posts = [post1, post2]

# Here we want to rotate on the posts and print title and username for each:
posts.each do |post|
    username = post&.user&.name || 'no user'
    puts"#{post.title} | #{username}|"
end
