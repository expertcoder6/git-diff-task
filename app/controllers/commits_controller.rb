class CommitsController < ApplicationController
  before_action :set_repo_details

  def show
    commit = GITHUB_CLIENT.commit("#{@owner}/#{@repo}", @commit_sha)
    render json: commit
  end

  def diff
    commit = GITHUB_CLIENT.commit("#{@owner}/#{@repo}", @commit_sha)
    parent_sha = commit[:parents][0][:sha]
    diff = GITHUB_CLIENT.compare("#{@owner}/#{@repo}", parent_sha, @commit_sha)
    render json: diff
  end

  private

  def set_repo_details
    @owner = params[:owner]
    @repo = params[:repo]
    @commit_sha = params[:commit_sha]
  end
end
