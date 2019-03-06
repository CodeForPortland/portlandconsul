module AdminHelper
  
  def side_menu
    if namespace == 'moderation/budgets'
      render "/moderation/menu"
    else
      render "/#{namespace}/menu"
    end
  end

  def namespaced_root_path
    "/#{namespace}"
  end

  def namespaced_header_title
    if namespace == 'moderation/budgets'
      t("moderation.header.title")
    else
      t("#{namespace}.header.title")
    end
  end

  def menu_moderated_content?
    moderated_sections.include?(controller_name) && controller.class.parent != Admin::Legislation
  end

  def moderated_sections
    ["hidden_proposals", "debates", "comments", "hidden_users", "activity",
     "hidden_budget_investments"]
  end

  def menu_budgets?
    controller_name.starts_with?("budget")
  end

  def menu_budget?
    ["spending_proposals"].include?(controller_name)
  end

  def menu_poll?
    %w[polls active_polls recounts results].include?(controller_name)
  end

  def menu_polls?
    menu_poll? || %w[questions answers].include?(controller_name)
  end

  def menu_booths?
    %w[officers booths shifts booth_assignments officer_assignments].include?(controller_name)
  end

  def menu_profiles?
    %w[administrators organizations officials moderators valuators managers users].include?(controller_name)
  end

  def menu_settings?
    ["settings", "tags", "geozones", "images", "content_blocks"].include?(controller_name)
  end

  def menu_customization?
    ["pages", "banners", "information_texts"].include?(controller_name) ||
    menu_homepage? || menu_pages?
  end

  def menu_homepage?
    ["homepage", "cards"].include?(controller_name) && params[:page_id].nil?
  end

  def menu_pages?
    ["pages", "cards"].include?(controller_name) && params[:page_id].present?
  end

  def official_level_options
    options = [["", 0]]
    (1..5).each do |i|
      options << [[t("admin.officials.level_#{i}"), setting["official_level_#{i}_name"]].compact.join(': '), i]
    end
    options
  end

  def admin_select_options
    Administrator.all.order('users.username asc').includes(:user).collect { |v| [ v.name, v.id ] }
  end

  def admin_submit_action(resource)
    resource.persisted? ? "edit" : "new"
  end

  def user_roles(user)
    roles = []
    roles << :admin if user.administrator?
    roles << :moderator if user.moderator?
    roles << :valuator if user.valuator?
    roles << :manager if user.manager?
    roles << :poll_officer if user.poll_officer?
    roles << :official if user.official?
    roles << :organization if user.organization?
    roles
  end

  def display_user_roles(user)
    user_roles(user).join(", ")
  end

  private

    def namespace
      controller.class.name.downcase.split("::").first
    end

end
