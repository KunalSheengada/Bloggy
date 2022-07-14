Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users", to: "users#usersList"
  get "/blogs", to: "blogs#blogsList"
  get "/blogs/:id", to: "blogs#singleBlog"
  get "/blogs/search/:blog_title", to: "blogs#searchBlog"
  post "/users/signup", to: "users#addUser"
  post "/users/login", to: "users#login"
  post "/blogs", to: "blogs#addBlog"
  delete "/blogs/Blogdetail/:id", to: "blogs#deleteBlog"
  put "/blogs/Editblog/:id", to: "blogs#editBlog"
end
