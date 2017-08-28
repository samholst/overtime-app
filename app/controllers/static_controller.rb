class StaticController < ApplicationController
  def homepage
    if admin_types.include? current_user.type
      @pending_approvals = Post.submitted.limit(6)
      @recent_audit_items = AuditLog.pending.limit(6)
    else
      @pending_audit_confirmations = current_user.audit_logs.pending
    end
  end
end
