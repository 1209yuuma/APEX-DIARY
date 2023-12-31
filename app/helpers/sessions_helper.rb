module SessionsHelper

    # 渡されたユーザーでログインする
    def log_in(user)
      session[:user_id] = user.id
    end

    # 現在ログイン中のユーザーを返す（いる場合）
  def current_legends
    if session[:user_id]
      @current_legends ||= User.find_by(id: session[:user_id])
    end
   end

   # ユーザーがログインしていればtrue、その他ならfalseを返す
  def logged_in?
    !current_legends.nil?
  end
end
  