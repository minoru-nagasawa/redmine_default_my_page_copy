require_dependency 'user_preference'

module DefaultMyPageCopy::Patches::UserPreferencePatch
  extend ActiveSupport::Concern
  
  included do
    before_create :copy_pref_from_current_user
  end
  
  def copy_pref_from_current_user
    self.others = User.current.pref.others.deep_dup
  end
end

unless UserPreference.included_modules.include?(DefaultMyPageCopy::Patches::UserPreferencePatch)
  UserPreference.send :include, DefaultMyPageCopy::Patches::UserPreferencePatch
end
