module Last
module Policies

class Policy
  attr_reader :actor
  attr_reader :subject

  # @param actor   [Object, nil]
  # @param subject [Class, Object]
  #
  def initialize(actor:, subject:)
    @actor   = actor
    @subject = subject
  end
end

# Baseline Policy implementation that's to be used by application-specific
# Policies. All local methods of this class are intended to be overridden.
#
class ApplicationPolicy < Policy
  def list?;   false; end
  def create?; false; end
  def read?;   false; end
  def update?; false; end
  def delete?; false; end
  def check?;  false; end
end

end
end
