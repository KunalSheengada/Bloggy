class BlogsController < ApplicationController
    protect_from_forgery with: :null_session
    
    def blogsList
        data =Blog.all
        render json: data
    end
    def searchBlog
        data =Blog.where("title LIKE?","%"+params[:title]+"%")
        render json: data
    end
    def addBlog
        data=Blog.new({
            "title"=>params[:title],
            "descp"=>params[:descp],
            "image_url"=>params[:image_url]
        })

        data.save
        render json: params
    end
    def singleBlog
        id = params[:id].to_i
        single = Blog.find(id)
        render json: single
    end
    def deleteBlog
        id = params[:id].to_i
        single = Blog.find(id)
        single.destroy
        render json: {}
    end
    def editBlog
        data = Blog.find_by(id: params[:id])
        data.update(
            "title"=>params[:title],
            "descp"=>params[:descp],
            "image_url"=>params[:image_url],
        )
        render json: data
    end
end
