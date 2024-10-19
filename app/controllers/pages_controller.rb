class PagesController < ApplicationController
    
 def start
 end

 def show
    @page_id = params[:id].to_i
    @total_pages = 3  # 現在の総ページ数、必要に応じて増やせます
 end

 def admin
    @total_trials = Trial.count
    @clicks_per_page = Click.group(:page, :button).count  # ページごとのボタンクリック数を集計
    @clicks = Click.group(:page, :area).count #必要か？
 end 
end
