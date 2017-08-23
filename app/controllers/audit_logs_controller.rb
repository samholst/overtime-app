class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.all.order('created_at ASC')
    authorize @audit_logs
  end
end
