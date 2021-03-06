class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  # def my_page?
  #   record.user == user
  # end

  def create?
    # return true
    user.present?
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
