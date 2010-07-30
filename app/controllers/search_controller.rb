class SearchController < ApplicationController
 
 #This function do a search on sphinx indexing and return result.
  def search
    unless params[:search_text].blank?
      if params[:view]=="photo"
        per_page=3
      elsif params[:view]=="column"
        per_page=5
      else
        per_page=6
      end
      @results = ThinkingSphinx.search params[:search_text], :order => "created_at DESC" ,:per_page => per_page, :page => params[:page]
      render :partial=>'/search/search_result', :locals=>{:results=>@results}
    end
  end
end
