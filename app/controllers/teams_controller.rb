class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def search
    # params[:query]
    # => "abid"
    # Book.where("title LIKE ?", Book.sanitize_sql_like(params[:title]) + "%")
    @result = User.where("name LIKE ?", User.sanitize_sql_like(params[:query]) + "%")
  end

  private
  def team_params
    params.require(:team).permit(:id, :name)
  end
end
