class StaticController < ApplicationController
  def homepage
    @pending_approvals = Post.submitted.limit(6)
    @recent_audit_items = AuditLog.pending.limit(6)
  end
end
