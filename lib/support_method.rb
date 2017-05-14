module SupportMethod
  extend ActiveSupport::Concern

  private

  def load_parent
    resource, id = request.path.split('/')[1, 2]
    @parent = resource.singularize.classify.constantize.find(id)
  end

  def create_able_resource
    load_parent
    build_operation_obj
    execute_operation
    head :created
  end

  def execute_operation
    case self.class.action.to_sym
    when verb_name
      @operation_obj.save
    when unverb_name
      @operation_obj.destroy_all
    end
  end
end
