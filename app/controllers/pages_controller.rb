class PagesController < ApplicationController
    
 def start
   @trial = Trial.create
   session[:trial_id] = @trial.id  # セッションに試行IDを保存
 end

 def show
    @page_id = params[:id].to_i
    @total_pages = 81  # 現在の総ページ数、必要に応じて増やせます
 end

 def admin
    @total_trials = Trial.count
  
    @click_counts = Click.group(:page, :button).count
 end 
end
