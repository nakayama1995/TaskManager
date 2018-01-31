class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :set_locale #before_actionはクラス内のメソッドしか呼べない

  private
    def set_locale

      if params[:locale].present?
        I18n.locale = params[:locale]
        session[:locale] = params[:locale]
      else
        I18n.locale = session[:locale]
      end

    end

    # def default_url_options(options={})
    #   #デバッグのためのログ出力
    #   logger.debug "default_url_options is passed options: #{options.inspect}"
    #   #ロケールの指定
    #   { locale: I18n.locale }
    # end
end
