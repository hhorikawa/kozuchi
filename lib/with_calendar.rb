# カレンダーと連動するコントローラを拡張するためのモジュール
module WithCalendar
  
  # params[:year]:: 年
  # params[:month]:: 月
  def change_month
    write_target_date(params[:year], params[:month]) # TODO: よびだされた側のアクションでしてここではなくしたい
    # TODO: params 内の actionが悪さをするので応急処置
    url_params = params.dup
    url_params.delete(:action)
    url_params.delete(:controller)
    redirect_to self.class.calendar_url_method ? send(self.class.calendar_url_method, url_params) : calendar_target_url
  end
  
  private
  
  # TODO: カレンダーに関係ないものは追い出す
  def calendar_target_url(options = params.dup)
    if options[:updated_deal_id]
      updated_deal = BaseDeal.find(:first, :conditions => ["id = ? and user_id = ?", options[:updated_deal_id], @user.id])
      raise ActiveRecord::RecordNotFound unless updated_deal
      year = updated_deal.year
      month = updated_deal.month
    else
      year = target_date[:year]
      month = target_date[:month]
    end
    options.merge!({:action => 'index', :year => year, :month => month})
    options
  end
  
#  def redirect_to_index(options = {})
#    if options[:updated_deal_id]
#      updated_deal = BaseDeal.find(:first, :conditions => ["id = ? and user_id = ?", options[:updated_deal_id], @user.id])
#      raise ActiveRecord::RecordNotFound unless updated_deal
#      year = updated_deal.year
#      month = updated_deal.month
#    else
#      year = target_date[:year]
#      month = target_date[:month]
#    end
#    options.merge!({:action => 'index', :year => year, :month => month})
#    redirect_to options
#  end
  
  # TODO: 廃止予定
  def redirect_unless_month
    if !params[:year] || !params[:month]
      redirect_to calendar_target_url(params)
      return false
    end
    # TODO: ここでセッションに記憶
  end
  
end