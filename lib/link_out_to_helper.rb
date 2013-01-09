require "link_out_to_helper/version"

module LinkOutToHelper
  def link_out_to(*args, &block)
    if block_given?
      args[1] = {:target => '_blank'}.merge(args[1] || {})
    else
      args[2] = {:target => '_blank'}.merge(args[2] || {})
    end
    link_to(*args, &block)
  end
end

ActionView::Base.send :include, LinkOutToHelper
