class ClicksController < ApplicationController
  def create

    # ボタン番号も保存するように変更
    click = Click.new(page: params[:page], button: params[:button])

    if click.save
      render json: { status: 'success' }, status: :ok
    else
      Rails.logger.debug "クリック情報の保存に失敗しました: #{click.errors.full_messages}"
      render json: { status: 'error', errors: click.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
