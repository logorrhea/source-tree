class Api::GithubController < ApplicationController

    respond_to :json, :html

    def search
        render json: Octokit.search_repositories(params[:query])
    end

    def show
        render json: Octokit.repo("#{params[:author]}/#{params[:repo]}")
    end

    def tree
        repo_name = "#{params[:author]}/#{params[:repo]}"
        render json: Octokit.tree(repo_name, params[:sha], recursive: true)
    end

end
