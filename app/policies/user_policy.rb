class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def my_page?
    true
  end

  def create?
    return true
  end

  def update?
      record.user == user
      # - record: the booking passed to the `authorize` method in controller
      # - user:   the `current_user` signed in with Devise.
    end

    def destroy?
      record.user == user
    end
end
