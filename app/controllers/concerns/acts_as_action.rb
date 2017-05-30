module ActsAsAction
  extend ActiveSupport::Concern

  included do
    before_action :load_parent
  end

  module ClassMethods
    def define_action_names(options = {})
      cattr_accessor :verb, :unverb, :instrument_name
      self.verb = options[:verb].to_sym
      self.unverb = options[:unverb].to_sym
      self.instrument_name = options[:instrument_name].to_s
    end
  end

  def create
    @current_user.send(self.class.verb, @parent)
    # TODO: 根据 verb 参数和 parent 对象所属类不同，instrument 不同的事件
    instrument self.class.instrument_name, obj_id: @parent.id, handler_id: current_user.id if instrument_name
    head :created
  end

  def destroy
    @current_user.send(self.class.unverb, @parent)
    head :no_content
  end
end
