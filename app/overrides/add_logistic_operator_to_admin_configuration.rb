Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_configuration',
  name: 'add_social_providers_link_configuration_menu',
  insert_before: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<%= configurations_sidebar_menu_item plural_resource_name(Spree::LogisticOperator), spree.admin_logistic_operators_path %>'
)
