class Task < ApplicationRecord
  #default_scope -> { order(created_at: :desc) }
  validates :name, presence: true, length: { minimum: 1 }
  validates :detail, length: {maximum: 50}
  validates :status, presence: true

  def self.search_name(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Task.where(['name LIKE ?', "%#{search}%"])
    else
      Task.all #全て表示。
    end
  end

  def self.search_status(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Task.where(['status LIKE ?', "%#{search}%"])
    else
      Task.all #全て表示。
    end
  end

  def priority_text
    if priority == 0
      return '低'
    elsif priority == 1
      return '中'
    else
      return '高'
    end
  end


end
