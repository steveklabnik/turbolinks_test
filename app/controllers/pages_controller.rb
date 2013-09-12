class PagesController < ApplicationController
  layout :set_layout

  def show
    @id = params[:id]
    @next_id = @id.to_i + 1

    if params[:turbo]
      @url_opts = {:turbo => true}
      @link_opts = {}
    elsif params[:pjax]
      @url_opts = {:pjax => true}
      @link_opts = {"data-no-turbolink" => true, "data-pjax" => true}
    else
      @url_opts = {}
      @link_opts = { "data-no-turbolink" => true}
    end
  end

  private

  def set_layout
    request.headers['X-PJAX'] ? false : "application"
  end
end
