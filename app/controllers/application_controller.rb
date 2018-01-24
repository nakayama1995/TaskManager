class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale #before_actionはクラス内のメソッドしか呼べない

  private
    def set_locale
      I18n.locale = params[:locale]
    end

    def default_url_options(options={})
      #デバッグのためのログ出力
      logger.debug "default_url_options is passed options: #{options.inspect}"
      #ロケールの指定
      { locale: I18n.locale }
    end
end
