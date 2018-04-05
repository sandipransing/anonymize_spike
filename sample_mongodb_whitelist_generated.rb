require 'data-anonymization'
require 'mongo'

DataAnon::Utils::Logging.logger.level = Logger::INFO

database 'Template' do

strategy DataAnon::Strategy::MongoDB::Blacklist
execution_strategy DataAnon::Parallel::Table
source_db :mongodb_uri => 'mongodb://localhost/appbuilder_development_test-anon', :database => 'appbuilder_development_test-anon'

=begin
	collection 'lists' do
		primary_key '_id'
		whitelist 'list_dictionary_id'
		anonymize 'p_continent'
		anonymize 'p_abbreviation'
		anonymize 'p_country'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'list_providers' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'created_at'
		whitelist 'deleted_at'
		whitelist 'list_dictionary_id'
		anonymize 'name'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'atom_dictionaries_20150414163137' do
		primary_key '_id'
		anonymize 'calculate_fields'
		anonymize 'dictionary_enabled'
		anonymize 'name'
		anonymize 'description'
		whitelist 'atom_template_id'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'app_events' do
		primary_key '_id'
		anonymize 'enabled'
		whitelist 'deleted_at'
		whitelist 'app_id'
		anonymize 'condition_ids'
		whitelist 'created_at'
		anonymize 'description'
		anonymize 'display_name'
		whitelist 'event_type'
		anonymize 'filter_ids'
		anonymize 'name'
		anonymize 'order'
		anonymize 'selected_action_ids'
		anonymize 'type'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'app_role_mappings' do
		primary_key '_id'
		anonymize 'name'
		whitelist 'app_id'
		whitelist 'role_id'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'app_relation_chain_entries' do
		primary_key '_id'
		document 'selector' do
		end
		whitelist 'deleted_at'
		anonymize 'app_ids'
		whitelist 'created_at'
		anonymize 'order'
		anonymize 'property_name'
		whitelist 'relation_chain_id'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'batch_process_statuses' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'atom_id'
		whitelist 'created_at'
		whitelist 'deleted_at'
		anonymize 'deleted_count'
		anonymize 'error_count'
		anonymize 'insert_count'
		anonymize 'messages'
		anonymize 'missing_count'
		anonymize 'name'
		anonymize 'processed'
		whitelist 'sidekiq_batch_id'
		anonymize 'status'
		anonymize 'total'
		anonymize 'untouched_count'
		anonymize 'update_count'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'steps' do
		primary_key '_id'
		whitelist 'app_id'
		anonymize 'auto_advance'
		anonymize 'auto_advance_with_one_approval'
		whitelist 'created_at'
		anonymize 'deactivate_on_forward'
		anonymize 'deactivate_on_rewind'
		whitelist 'deleted_at'
		anonymize 'description'
		anonymize 'name'
		anonymize 'order'
		anonymize 'reset_on_rewind'
		anonymize 'role_ids'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'portals' do
		primary_key '_id'
		anonymize 'app_ids'
		anonymize 'body'
		whitelist 'deleted_at'
		anonymize 'footer'
		anonymize 'header'
		anonymize 'migrated'
		anonymize 'name'
	end

=end
=begin
	collection 'data_provider_columns' do
	end

=end
=begin
	collection 'packages' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'deleted_at'
		anonymize 'user_email'
		anonymize 'ott_user_email'
		anonymize 'comment'
		document 'updates' do
			document 'AtomDictionary-59e52f74ed404f7a44000566' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					anonymize 'calculate_fields'
					anonymize 'dictionary_enabled'
					whitelist 'deleted_at'
					anonymize 'name'
					anonymize 'description'
					whitelist 'atom_template_id'
				end
			end
			document 'AtomProperty-59e52f74ed404f7a4400056f' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'calculation_type'
					anonymize 'lookup_store'
					whitelist 'deleted_at'
					anonymize 'name'
					whitelist 'enforce_app_type'
					anonymize 'allow_custom_text'
					anonymize 'validate_unique'
					anonymize 'validate_case_sensitive'
					anonymize 'olap_cube'
					anonymize 'index_in_warehouse'
					anonymize 'skip_render'
					anonymize 'skip_panel'
					anonymize 'skip_empty_panel'
					anonymize 'radio_button'
					anonymize 'allow_grid_popup'
					whitelist 'atom_dictionary_id'
					whitelist 'atom_dictionary_type'
					anonymize 'display_name'
					whitelist 'data_type'
					anonymize 'required'
					anonymize 'display_on_dashboard'
					anonymize 'values'
					anonymize 'readonly_field'
					anonymize 'description'
					anonymize 'calculated'
					whitelist 'numeric_calc_type'
					anonymize 'expression'
					anonymize 'initial_value'
					anonymize 'tags'
					anonymize 'search_facet'
					anonymize 'search_result'
					anonymize 'related_atoms_app'
					anonymize 'related_inverse_field'
					anonymize 'order'
					anonymize 'list'
					anonymize 'search_column'
					anonymize 'value_column'
					anonymize 'filter_column'
					whitelist 'ui_action_id'
					whitelist 'validator_id'
					whitelist 'validate_unique_filter_id'
					whitelist 'parent_filter_id'
					anonymize 'parent_filter_fields'
					anonymize 'parent_filter_result_fields'
					anonymize 'length_in_warehouse'
					anonymize 'validate_unique_scope'
					anonymize 'radio_button_columns'
					anonymize 'currency_code'
					anonymize 'combo_data_source'
					anonymize 'cascade_delete'
					anonymize 'meta_tag_ids'
				end
			end
			document 'AtomProperty-59e52f74ed404f7a44000571' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'calculation_type'
					anonymize 'lookup_store'
					whitelist 'deleted_at'
					anonymize 'name'
					whitelist 'enforce_app_type'
					anonymize 'allow_custom_text'
					anonymize 'validate_unique'
					anonymize 'validate_case_sensitive'
					anonymize 'olap_cube'
					anonymize 'index_in_warehouse'
					anonymize 'skip_render'
					anonymize 'skip_panel'
					anonymize 'skip_empty_panel'
					anonymize 'radio_button'
					anonymize 'allow_grid_popup'
					whitelist 'atom_dictionary_id'
					whitelist 'atom_dictionary_type'
					anonymize 'display_name'
					whitelist 'data_type'
					anonymize 'required'
					anonymize 'display_on_dashboard'
					anonymize 'values'
					anonymize 'readonly_field'
					anonymize 'description'
					anonymize 'calculated'
					whitelist 'numeric_calc_type'
					anonymize 'expression'
					anonymize 'initial_value'
					anonymize 'tags'
					anonymize 'search_facet'
					anonymize 'search_result'
					anonymize 'related_atoms_app'
					anonymize 'related_inverse_field'
					anonymize 'order'
					anonymize 'list'
					anonymize 'search_column'
					anonymize 'value_column'
					anonymize 'filter_column'
					whitelist 'ui_action_id'
					whitelist 'validator_id'
					whitelist 'validate_unique_filter_id'
					whitelist 'parent_filter_id'
					anonymize 'parent_filter_fields'
					anonymize 'parent_filter_result_fields'
					anonymize 'length_in_warehouse'
					anonymize 'validate_unique_scope'
					anonymize 'radio_button_columns'
					anonymize 'currency_code'
					anonymize 'combo_data_source'
					anonymize 'cascade_delete'
					anonymize 'meta_tag_ids'
				end
			end
			document 'AtomProperty-59e52f74ed404f7a44000573' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'calculation_type'
					anonymize 'lookup_store'
					whitelist 'deleted_at'
					anonymize 'name'
					whitelist 'enforce_app_type'
					anonymize 'allow_custom_text'
					anonymize 'validate_unique'
					anonymize 'validate_case_sensitive'
					anonymize 'olap_cube'
					anonymize 'index_in_warehouse'
					anonymize 'skip_render'
					anonymize 'skip_panel'
					anonymize 'skip_empty_panel'
					anonymize 'radio_button'
					anonymize 'allow_grid_popup'
					whitelist 'atom_dictionary_id'
					whitelist 'atom_dictionary_type'
					anonymize 'display_name'
					whitelist 'data_type'
					anonymize 'required'
					anonymize 'display_on_dashboard'
					anonymize 'values'
					anonymize 'readonly_field'
					anonymize 'description'
					anonymize 'calculated'
					whitelist 'numeric_calc_type'
					anonymize 'expression'
					anonymize 'initial_value'
					anonymize 'tags'
					anonymize 'search_facet'
					anonymize 'search_result'
					anonymize 'related_atoms_app'
					anonymize 'related_inverse_field'
					anonymize 'order'
					anonymize 'list'
					anonymize 'search_column'
					anonymize 'value_column'
					anonymize 'filter_column'
					whitelist 'ui_action_id'
					whitelist 'validator_id'
					whitelist 'validate_unique_filter_id'
					whitelist 'parent_filter_id'
					anonymize 'parent_filter_fields'
					anonymize 'parent_filter_result_fields'
					anonymize 'length_in_warehouse'
					anonymize 'validate_unique_scope'
					anonymize 'radio_button_columns'
					anonymize 'currency_code'
					anonymize 'combo_data_source'
					anonymize 'cascade_delete'
					anonymize 'meta_tag_ids'
				end
			end
			document 'AtomFieldRepresentation-59e52f74ed404f7a44000570' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'deleted_at'
					anonymize 'name'
					whitelist 'atom_property_id'
					anonymize 'type'
					whitelist 'control_id'
					anonymize 'display_name'
					whitelist 'tab_id'
					whitelist 'view_tab_id'
					anonymize 'display_mode'
					anonymize 'right_label'
					anonymize 'empty_text'
					anonymize 'size'
					anonymize 'color'
					anonymize 'hidden'
					anonymize 'hide_label'
					anonymize 'label_width'
					anonymize 'filter_by'
					anonymize 'ignore'
					anonymize 'unmodifiable'
					anonymize 'data_type_unmodifiable'
					anonymize 'readonly_field'
					anonymize 'height'
				end
			end
			document 'AtomFieldRepresentation-59e52f74ed404f7a44000572' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'deleted_at'
					anonymize 'name'
					whitelist 'atom_property_id'
					anonymize 'type'
					whitelist 'control_id'
					anonymize 'display_name'
					whitelist 'tab_id'
					whitelist 'view_tab_id'
					anonymize 'display_mode'
					anonymize 'right_label'
					anonymize 'empty_text'
					anonymize 'size'
					anonymize 'color'
					anonymize 'hidden'
					anonymize 'hide_label'
					anonymize 'label_width'
					anonymize 'filter_by'
					anonymize 'ignore'
					anonymize 'unmodifiable'
					anonymize 'data_type_unmodifiable'
					anonymize 'readonly_field'
					anonymize 'height'
				end
			end
			document 'AtomFieldRepresentation-59e52f74ed404f7a44000574' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'deleted_at'
					anonymize 'name'
					whitelist 'atom_property_id'
					anonymize 'type'
					whitelist 'control_id'
					anonymize 'display_name'
					whitelist 'tab_id'
					whitelist 'view_tab_id'
					anonymize 'display_mode'
					anonymize 'right_label'
					anonymize 'empty_text'
					anonymize 'size'
					anonymize 'color'
					anonymize 'hidden'
					anonymize 'hide_label'
					anonymize 'label_width'
					anonymize 'filter_by'
					anonymize 'ignore'
					anonymize 'unmodifiable'
					anonymize 'data_type_unmodifiable'
					anonymize 'readonly_field'
					anonymize 'height'
				end
			end
			document 'App-59e52f74ed404f7a44000565' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'layout_type'
					anonymize 'form_control_margin'
					anonymize 'form_label_align'
					anonymize 'form_label_width'
					anonymize 'launch_form_width'
					anonymize 'test_email'
					anonymize 'steps_label'
					anonymize 'comments_notify_all'
					anonymize 'view_page_display_mode'
					anonymize 'tags'
					anonymize 'email_mask'
					whitelist 'deleted_at'
					anonymize 'active'
					anonymize 'atom_details_is_first'
					anonymize 'rebuilding'
					anonymize 'prevent_reactions'
					anonymize 'limit_functions_to_admins'
					anonymize 'atom_filter_enabled'
					anonymize 'test_mode'
					anonymize 'step_phase_gated'
					anonymize 'step_change_admin_only'
					anonymize 'activate_on_launch'
					anonymize 'use_reporting'
					anonymize 'use_billing'
					whitelist 'atom_dictionary_id'
					anonymize 'name'
					anonymize 'description'
					anonymize 'selected_features'
					anonymize 'notification_from_display'
					whitelist 'background_image_id'
					whitelist 'icon_image_id'
				end
			end
			document 'Step-59e52f74ed404f7a44000567' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					anonymize 'auto_advance'
					anonymize 'reset_on_rewind'
					anonymize 'deactivate_on_rewind'
					anonymize 'deactivate_on_forward'
					whitelist 'deleted_at'
					anonymize 'auto_advance_with_one_approval'
					whitelist 'app_id'
					anonymize 'order'
					anonymize 'name'
					anonymize 'description'
					anonymize 'role_ids'
				end
			end
			document 'Role-59e52f74ed404f7a44000568' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					anonymize 'permission_names'
					anonymize 'permission_sets'
					document 'config' do
					end
					anonymize 'enabled'
					anonymize 'display_order'
					whitelist 'deleted_at'
					anonymize 'dictionary_role'
					anonymize 'prevent_notification'
					anonymize 'required'
					anonymize 'allow_permission_sets'
					anonymize 'restricted'
					whitelist 'owner_id'
					whitelist 'owner_type'
					anonymize 'name'
					whitelist 'parent_id'
					anonymize 'initial_value'
					anonymize 'readonly_role'
					anonymize 'step_ids'
				end
			end
			document 'Role-59e52f74ed404f7a44000569' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					anonymize 'permission_names'
					anonymize 'permission_sets'
					document 'config' do
					end
					anonymize 'enabled'
					anonymize 'display_order'
					whitelist 'deleted_at'
					anonymize 'dictionary_role'
					anonymize 'prevent_notification'
					anonymize 'required'
					anonymize 'allow_permission_sets'
					anonymize 'restricted'
					whitelist 'owner_id'
					whitelist 'owner_type'
					anonymize 'name'
					whitelist 'parent_id'
					anonymize 'initial_value'
					anonymize 'readonly_role'
					anonymize 'step_ids'
				end
			end
			document 'App::Tab-59e52f74ed404f7a4400056a' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'deleted_at'
					whitelist 'display_id'
					whitelist 'app_id'
					anonymize 'role_ids'
					anonymize 'name'
					anonymize 'display_name'
					anonymize 'description'
					anonymize 'view_name'
					anonymize 'display_mode'
					anonymize 'hidden_liquid'
				end
			end
			document 'App::Tab-59e52f74ed404f7a4400056b' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'deleted_at'
					whitelist 'display_id'
					whitelist 'app_id'
					anonymize 'role_ids'
					anonymize 'name'
					anonymize 'display_name'
					anonymize 'description'
					anonymize 'view_name'
					anonymize 'display_mode'
					anonymize 'hidden_liquid'
				end
			end
			document 'App::Tab-59e52f74ed404f7a4400056c' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'deleted_at'
					whitelist 'display_id'
					whitelist 'app_id'
					anonymize 'role_ids'
					anonymize 'name'
					anonymize 'display_name'
					anonymize 'description'
					anonymize 'view_name'
					anonymize 'display_mode'
					anonymize 'hidden_liquid'
				end
			end
			document 'App::Tab-59e52f74ed404f7a4400056d' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'deleted_at'
					whitelist 'display_id'
					whitelist 'app_id'
					anonymize 'role_ids'
					anonymize 'name'
					anonymize 'display_name'
					anonymize 'description'
					anonymize 'view_name'
					anonymize 'display_mode'
					anonymize 'hidden_liquid'
				end
			end
			document 'App::Tab-59e52f74ed404f7a4400056e' do
				anonymize 'operation'
				document 'attributes' do
					primary_key '_id'
					whitelist 'deleted_at'
					whitelist 'display_id'
					whitelist 'app_id'
					anonymize 'role_ids'
					anonymize 'name'
					anonymize 'display_name'
					anonymize 'description'
					anonymize 'view_name'
					anonymize 'display_mode'
					anonymize 'hidden_liquid'
				end
			end
		end
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'app_event_trackers' do
	end

=end
=begin
	collection 'app_mails' do
		primary_key '_id'
		anonymize 'missing_recipients'
		anonymize 'sender'
		anonymize 'recipient'
		anonymize 'subject'
		anonymize 'extracted_body'
		anonymize 'extracted_body_text'
		anonymize 'striped_body'
		anonymize 'striped_body_text'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'app_view_containers' do
	end

=end
=begin
	collection 'app_view_layouts' do
	end

=end
	collection 'atoms' do
		#default App
		criteria '54a4447ded404f3b39000239'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		collection 'comments' do
			primary_key '_id'
			anonymize 'message'
			anonymize 'notify_selected'
			anonymize 'author'
			anonymize 'private'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'name'
		anonymize 'redirect'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'context_type'
			whitelist 'context_id'
			whitelist 'user_id'
			anonymize 'context_field'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Hailey Regression 1 App
		criteria '54a444aded404f42940002f5'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'name'
		anonymize 'p_checkbox'
		anonymize 'p_combo'
		anonymize 'p_currency'
		anonymize 'p_date'
		anonymize 'p_email'
		anonymize 'p_html_field'
		anonymize 'p_project_email'
		anonymize 'p_test_text'
		anonymize 'p_text_1'
		anonymize 'p_textarea'
		anonymize 'redirect'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'context_type'
			whitelist 'context_id'
			whitelist 'user_id'
			anonymize 'context_field'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Hailey Regression 2 App
		criteria '54a44519ed404fdbdf000045'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'name'
		anonymize 'p_combo_1'
		anonymize 'p_combo_2'
		anonymize 'p_combo_3'
		anonymize 'p_date'
		anonymize 'p_legal_approver_email'
		anonymize 'p_required_and_hidden'
		anonymize 'p_text_1'
		anonymize 'p_text_2'
		anonymize 'p_text_first'
		anonymize 'p_text_last'
		anonymize 'p_ui_action_editable_htmlfield'
		anonymize 'p_ui_action_htmlfield'
		anonymize 'p_ui_action_test_box'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Incoming Emails App
		criteria '5694032fed404f012b000058'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		collection 'atom_emails' do
			primary_key '_id'
			anonymize 'from'
			anonymize 'message'
			anonymize 'subject'
			whitelist 'app_mail_id'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'name'
		anonymize 'p_project_email'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Document Container App
		criteria '569403b8ed404fe0da000007'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'name'
		whitelist 'r_document_id'
		whitelist 'r_parent_id'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Radio Test App
		criteria '56a27ebded404f51f6000006'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'name'
		anonymize 'p_choose'
		anonymize 'p_filter'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Tag Hidden Combo Bug Test App
		criteria '575ec9baed404fddcd00060e'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_tag_1_combo'
		anonymize 'p_tag_2_combo'
		whitelist 'p_tag_type'
		anonymize 'p_untagged'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#API Testing App
		criteria '58973a42ed404fa4720004c4'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_notes'
		anonymize 'p_rest_status'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#User Profiles Original App
		criteria '58a37d29ed404f1d900006c6'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_default_navigation_item'
		anonymize 'p_default_suite_name'
		anonymize 'p_new_ui'
		anonymize 'p_suite_navigation_items'
		anonymize 'p_user_name'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Big Transaction List App
		criteria '5a568537ed404f8c3d00168d'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'key_hash'
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'name'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Legal Entities App
		criteria '571e70424312b16aec000066'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_address1'
		anonymize 'p_address2'
		whitelist 'p_atom_id'
		anonymize 'p_city'
		anonymize 'p_country'
		anonymize 'p_post_code'
		whitelist 'p_psb_client_account_legal_entity_id'
		anonymize 'p_state_or_region'
		whitelist 'p_tax_id'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Matter App
		criteria '54b6ad16c1a23fae94000006'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_actual_settlement_amount'
		anonymize 'p_actual_settlement_amount_matter_currency'
		anonymize 'p_administering_settlement'
		anonymize 'p_allocation_percentage'
		anonymize 'p_allocations_sum'
		anonymize 'p_app_name'
		anonymize 'p_area_of_law'
		anonymize 'p_area_of_law_matter_type_merged'
		anonymize 'p_changes_hash'
		anonymize 'p_closing_reason'
		anonymize 'p_country'
		anonymize 'p_current_approved_settlement_amount'
		anonymize 'p_current_approved_settlement_amount_matter_currency'
		anonymize 'p_date_of_settlement_judgement'
		anonymize 'p_disposition_resolution_date'
		anonymize 'p_disposition_resolution_description'
		anonymize 'p_estimated_matter_completion_date'
		anonymize 'p_estimated_spend_this_month'
		anonymize 'p_estimated_spend_this_year'
		anonymize 'p_evaluate_vendor'
		whitelist 'p_full_matter_type'
		whitelist 'p_hide_matter_sub_type'
		anonymize 'p_invoice_total'
		document 'p_invoice_total_matter_currency' do
			anonymize 'cents'
			anonymize 'currency_iso'
		end
		anonymize 'p_left_column_2'
		whitelist 'p_legal_entity_id'
		anonymize 'p_legal_entity_name'
		anonymize 'p_major_matter'
		whitelist 'p_matter_atom_id'
		anonymize 'p_matter_closed_on'
		anonymize 'p_matter_currency'
		anonymize 'p_matter_description'
		anonymize 'p_matter_email_address'
		anonymize 'p_matter_last_activity'
		anonymize 'p_matter_manager_email'
		anonymize 'p_matter_manager_name'
		anonymize 'p_matter_opened_on'
		anonymize 'p_matter_subtype_1'
		anonymize 'p_matter_subtype_2'
		whitelist 'p_matter_type'
		anonymize 'p_maximum_potential_exposure'
		anonymize 'p_maximum_potential_exposure_matter_currency'
		anonymize 'p_migrated'
		anonymize 'p_mpe_unknown'
		anonymize 'p_new_assignment_right'
		anonymize 'p_number'
		anonymize 'p_org_unit_1'
		anonymize 'p_participants'
		anonymize 'p_previous_status'
		anonymize 'p_private'
		anonymize 'p_proposed_settlement'
		anonymize 'p_proposed_settlement_matter_currency'
		anonymize 'p_reporting_state_name'
		anonymize 'p_reserve'
		anonymize 'p_reserve_matter_currency'
		anonymize 'p_right_column_2'
		anonymize 'p_selectable_legal_entity'
		anonymize 'p_selectable_matter_manager'
		anonymize 'p_settlement_confidential'
		anonymize 'p_settlement_payment_terms'
		whitelist 'p_settlement_type'
		anonymize 'p_settlement_value'
		anonymize 'p_settlement_value_matter_currency'
		anonymize 'p_state'
		anonymize 'p_total_budget'
		document 'p_total_budget_matter_currency' do
			anonymize 'cents'
			anonymize 'currency_iso'
		end
		anonymize 'p_trailing_invoice_days'
		whitelist 'p_value_type'
		anonymize 'p_vendor_names'
		anonymize 'p_watch_budget_details'
		whitelist 'r_legal_entity_id'
		whitelist 'r_matter_manager_user_id'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Hailey Regression 3 App
		criteria '54a4453eed404f4294000346'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_combo'
		anonymize 'p_text'
		whitelist 'r_belongs_to_app_2_id'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Documents App
		criteria '54ff56f8b82ae20f450000d4'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_attachment'
		whitelist 'p_attachment_type'
		anonymize 'p_change_history'
		anonymize 'p_date_uploaded'
		anonymize 'p_description'
		anonymize 'p_matter_name'
		anonymize 'p_title'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#User Profiles App
		criteria '558b2ee4e9f5fab8c0000001'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_corporate_user_created'
		anonymize 'p_corporate_user_status'
		anonymize 'p_deactivated'
		anonymize 'p_default_navigation_item'
		anonymize 'p_default_plugin'
		anonymize 'p_default_suite_name'
		anonymize 'p_enable_out_of_office'
		anonymize 'p_fake_for_auto_update'
		anonymize 'p_group_name'
		anonymize 'p_invoice_approval_limit'
		anonymize 'p_invoice_approver_name'
		anonymize 'p_last_login_date'
		anonymize 'p_new_ui'
		anonymize 'p_out_of_office_selector'
		anonymize 'p_paralegal_name'
		anonymize 'p_suite_navigation_items'
		anonymize 'p_user_name'
		whitelist 'r_group_id'
		whitelist 'r_invoice_approver_id'
		whitelist 'r_paralegal_belongsto_id'
		anonymize 'r_user_pref_plugin_ids'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Group Preferences App
		criteria '558b318de9f5fa662c00001f'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_default_navigation_item'
		anonymize 'p_default_suite_name'
		anonymize 'p_fake_number_to_support_updates'
		anonymize 'p_suite_navigation_items'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#DG background CCA test app App
		criteria '58c17d84ed404fe0740005aa'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		collection 'atom_emails' do
			primary_key '_id'
			anonymize 'from'
			anonymize 'message'
			anonymize 'subject'
			whitelist 'app_mail_id'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'atom_number'
		whitelist 'calculated_at'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_number'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#UI Actions in Sections App
		criteria '599737beed404f211b00080d'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_copy'
		anonymize 'p_orig'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Combo to Text Test App App
		criteria '599b41caed404f1d13000b99'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_breed'
		anonymize 'p_species'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Combo2Text App
		criteria '599b50d4ed404faa220002d0'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_breed'
		anonymize 'p_species'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Combo to Text 22 Aug App App
		criteria '599c60cced404f82c300053c'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_breed'
		anonymize 'p_species'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Hartford Security Group App
		criteria '599c91e6ed404f1e38000ed5'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'r_legal_rosters_rw_ids'
		anonymize 'r_read_write_ids'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Legal Service Requests App
		criteria '599c9288ed404f2b28000448'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Legal Team Roster App
		criteria '599c92ebed404f2581000943'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'r_legal_rosters_rw_ids'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#DG read only required test App
		criteria '59b6a2eced404f1a80000580'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_field4'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#File Test App
		criteria '59c923a5ed404f5bc500027b'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		collection 'comments' do
			primary_key '_id'
			anonymize 'message'
			anonymize 'author'
			anonymize 'private'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_file'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#UG Test App 1 App
		criteria '59d40ce3ed404feda700030d'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_private'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#Outlook Configuration App
		criteria '59e7c111ed404ff761000814'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_app_name'
		anonymize 'p_field_list'
		anonymize 'p_incoming_email_field'
		anonymize 'p_plugin_name'
		anonymize 'p_regex_field'
		anonymize 'p_regex_filter'
		anonymize 'p_row_template'
		anonymize 'p_search_by_fields'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#UI Action Debouncing Test App App
		criteria '5a46b7d4ed404f0b5c000127'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_field8'
		anonymize 'p_text1'
		anonymize 'p_text2'
		anonymize 'p_text3'
		anonymize 'p_text4'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#DG document folder tag test App
		criteria '5a4ea08ded404f1e4e0009e8'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Listcombo indirect filtering App
		criteria '5a53d3c3ed404f0df50008cc'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_continent'
		anonymize 'p_continent_text'
		anonymize 'p_country'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#MC UI Action App
		criteria '5a53ea7bed404fede7000cf5'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_combo'
		anonymize 'p_curr_code'
		document 'p_mc' do
			anonymize 'cents'
			anonymize 'currency_iso'
		end
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		anonymize 'user_mappings'
	end

	collection 'atoms' do
		#Populate Transaction List App
		criteria '5a5685f0ed404f0547000001'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_csv_file'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#React Designer Regression App 2 App
		criteria '5a5cc6195180a5167e00011f'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_file_sync'
		whitelist 'r_belongs_to_2_id'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

	collection 'atoms' do
		#DateTime App App
		criteria '5abc924ad68c3898d900028c'
		batch_size 100
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_number'
		whitelist 'created_at'
		anonymize 'curr_state_name'
		whitelist 'current_step_ref_id'
		whitelist 'deleted_at'
		collection 'histories' do
			primary_key '_id'
			anonymize 'actor'
			anonymize 'message'
			anonymize 'event_class'
			whitelist 'event_type'
			whitelist 'updated_at'
			whitelist 'created_at'
		end
		anonymize 'last_activity_date'
		anonymize 'last_activity_name'
		anonymize 'last_actor'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		anonymize 'p_system_date'
		anonymize 'requester_email'
		anonymize 'requester_name'
		anonymize 'status'
		whitelist 'updated_at'
		collection 'user_mappings' do
			primary_key '_id'
			whitelist 'user_id'
			whitelist 'context_id'
			whitelist 'context_type'
			anonymize 'has_approval'
		end
	end

=begin
	collection 'cached_data' do
	end

=end
=begin
	collection 'app_filters' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'deleted_at'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'description'
		anonymize 'filter_json'
		anonymize 'name'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'documents' do
		primary_key '_id'
		whitelist 'created_at'
		whitelist 'data_store_id'
		anonymize 'document_kind'
		anonymize 'name'
		whitelist 'updated_at'
		whitelist 'user_id'
	end

=end
=begin
	collection 'app_widgets' do
		primary_key '_id'
		whitelist '_type'
		anonymize 'size'
		whitelist 'deleted_at'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'html'
		anonymize 'name'
		anonymize 'order'
		anonymize 'show_in_outlook'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'suite_widgets' do
		primary_key '_id'
		whitelist '_type'
		anonymize 'size'
		whitelist 'chart_type'
		anonymize 'name'
		whitelist 'app_id'
		whitelist 'filter_id'
		anonymize 'total_field'
		anonymize 'portion_field'
		anonymize 'total_field_renderer'
		anonymize 'chart_label'
		anonymize 'chart_unit_label'
		whitelist 'suite_id'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'apps' do
		primary_key '_id'
		anonymize 'activate_on_launch'
		anonymize 'active'
		anonymize 'anon_launch_redirect_url'
		anonymize 'app_link_ids'
		anonymize 'associated_app_ids'
		anonymize 'atom_details_is_first'
		anonymize 'atom_details_panel_text'
		whitelist 'atom_dictionary_id'
		anonymize 'atom_filter_enabled'
		whitelist 'background_image_id'
		anonymize 'comments_notify_all'
		whitelist 'corporation_id'
		whitelist 'created_at'
		whitelist 'default_data_view_id'
		whitelist 'deleted_at'
		anonymize 'description'
		anonymize 'email_mask'
		anonymize 'form_control_margin'
		anonymize 'form_label_align'
		anonymize 'form_label_width'
		whitelist 'icon_image_id'
		anonymize 'launch_button_text'
		anonymize 'launch_form_width'
		whitelist 'layout_type'
		anonymize 'limit_functions_to_admins'
		anonymize 'name'
		anonymize 'notification_from_display'
		whitelist 'old_background_image_id'
		whitelist 'old_icon_image_id'
		anonymize 'portal_ids'
		anonymize 'prevent_reactions'
		anonymize 'rebuilding'
		anonymize 'restrict_access'
		anonymize 'search_disabled'
		anonymize 'secondary_buttons_text'
		anonymize 'selected_features'
		anonymize 'step_change_admin_only'
		anonymize 'step_phase_gated'
		anonymize 'steps_label'
		anonymize 'tags'
		anonymize 'test_email'
		anonymize 'test_mode'
		whitelist 'updated_at'
		anonymize 'use_billing'
		anonymize 'use_reporting'
		anonymize 'view_page_display_mode'
	end

=end
=begin
	collection 'app_changes' do
		primary_key '_id'
		whitelist 'deleted_at'
		anonymize 'author'
		whitelist 'app_id'
		anonymize 'post_data'
		anonymize 'name'
		anonymize 'class_name'
		anonymize 'action'
		anonymize 'comment'
		anonymize 'app_data'
		anonymize 'app_name'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'atom_dictionaries_20150811150302' do
		primary_key '_id'
		anonymize 'calculate_fields'
		anonymize 'dictionary_enabled'
		whitelist 'deleted_at'
		whitelist 'atom_template_id'
		whitelist 'corporation_id'
		whitelist 'created_at'
		anonymize 'description'
		anonymize 'name'
		whitelist 'number_generator_id'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'app_iframes' do
	end

=end
=begin
	collection 'app_view_field_configs' do
	end

=end
=begin
	collection 'app_meta_tags' do
		primary_key '_id'
		whitelist 'app_id'
		whitelist 'created_at'
		whitelist 'deleted_at'
		anonymize 'name'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'app_activity_logs' do
		primary_key '_id'
		whitelist 'activity_type'
		anonymize 'activity_date'
		whitelist 'activity_object_id'
		whitelist 'activity_object_type'
		whitelist 'atom_id'
		whitelist 'app_id'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'app_view_layout_types' do
	end

=end
=begin
	collection 'app_buttons' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'deleted_at'
		anonymize 'secondary_button'
		anonymize 'outlook_hidden'
		whitelist 'app_id'
		whitelist 'condition_id'
		whitelist 'created_at'
		anonymize 'icon_image_path'
		anonymize 'name'
		anonymize 'order'
		anonymize 'templates'
		anonymize 'text'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'app_panels' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'deleted_at'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'description'
		anonymize 'height'
		anonymize 'hidden_if'
		anonymize 'name'
		anonymize 'order'
		whitelist 'updated_at'
		anonymize 'url'
	end

=end
=begin
	collection 'tiny_urls' do
		primary_key '_id'
		anonymize 'action'
		document 'config' do
			whitelist 'app_id'
		end
		anonymize 'controller'
		whitelist 'created_at'
		anonymize 'js_route'
		whitelist 'target_id'
		whitelist 'target_type'
		whitelist 'updated_at'
		anonymize 'use_count'
		whitelist 'user_id'
		anonymize 'uuid'
	end

=end
=begin
	collection 'suite_action_menu_items' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'display_name'
		anonymize 'icon_image_path'
		anonymize 'layout_order'
		anonymize 'name'
		whitelist 'suite_id'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'batch_process_status_details' do
		primary_key '_id'
		whitelist 'deleted_at'
		anonymize 'message'
		anonymize 'row_num'
		whitelist 'batch_process_status_id'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'deprecated_grid_configurations' do
		primary_key '_id'
		whitelist 'context_id'
		whitelist 'context_type'
		whitelist 'created_at'
		anonymize 'data'
		anonymize 'name'
		anonymize 'state_data'
		whitelist 'updated_at'
		anonymize 'view_name'
	end

=end
=begin
	collection 'roles' do
		primary_key '_id'
		anonymize 'permission_names'
		anonymize 'permission_sets'
		document 'config' do
			anonymize 'acts_as_admin'
		end
		anonymize 'enabled'
		anonymize 'display_order'
		whitelist 'deleted_at'
		anonymize 'allow_permission_sets'
		whitelist 'created_at'
		anonymize 'dictionary_role'
		anonymize 'name'
		anonymize 'prevent_notification'
		anonymize 'required'
		anonymize 'restricted'
		whitelist 'updated_at'
		whitelist 'corporation_id'
	end

=end
=begin
	collection 'atom_field_representations_20150414163137' do
		primary_key '_id'
		whitelist 'atom_property_id'
		anonymize 'color'
		document 'config_options' do
			anonymize 'fieldLabel'
			anonymize 'hideLabel'
			anonymize 'name'
			anonymize 'show_required'
			anonymize 'emptyText'
			whitelist 'ui_action_id'
			anonymize 'evaluate'
			anonymize 'eval_field'
			whitelist 'validator_id'
			anonymize 'ui_action_url'
			anonymize 'hidden_condition'
			anonymize 'filter_by_condition'
			anonymize 'xtype_onit'
			anonymize 'listeners'
			anonymize 'style'
		end
		whitelist 'control_id'
		whitelist 'created_at'
		anonymize 'data_type_unmodifiable'
		anonymize 'display_mode'
		anonymize 'display_name'
		anonymize 'empty_text'
		anonymize 'filter_by'
		anonymize 'height'
		anonymize 'hidden'
		anonymize 'hide_label'
		anonymize 'ignore'
		anonymize 'name'
		anonymize 'readonly'
		anonymize 'right_label'
		anonymize 'size'
		whitelist 'tab_id'
		anonymize 'type'
		anonymize 'unmodifiable'
		whitelist 'updated_at'
		whitelist 'view_tab_id'
	end

=end
=begin
	collection 'app_reports' do
	end

=end
=begin
	collection 'email_addresses' do
		primary_key '_id'
		anonymize 'account'
		anonymize 'subdomain'
		whitelist 'email_addressable_id'
		whitelist 'email_addressable_type'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'atom_properties_20150811150302' do
		primary_key '_id'
		whitelist 'calculation_type'
		anonymize 'lookup_store'
		whitelist 'deleted_at'
		whitelist 'enforce_app_type'
		anonymize 'allow_custom_text'
		anonymize 'validate_unique'
		anonymize 'validate_case_sensitive'
		anonymize 'olap_cube'
		anonymize 'index_in_warehouse'
		anonymize 'skip_render'
		anonymize 'skip_panel'
		anonymize 'skip_empty_panel'
		anonymize 'radio_button'
		anonymize 'allow_grid_popup'
		whitelist 'atom_dictionary_id'
		whitelist 'atom_dictionary_type'
		anonymize 'atom_link'
		whitelist 'atom_link_property_id'
		anonymize 'calculated'
		anonymize 'cascade_delete'
		anonymize 'combo_data_source'
		whitelist 'corporation_id'
		whitelist 'created_at'
		anonymize 'currency_code'
		whitelist 'currency_code_field_id'
		whitelist 'data_type'
		anonymize 'description'
		anonymize 'display_name'
		anonymize 'display_on_dashboard'
		anonymize 'expression'
		anonymize 'filter_column'
		anonymize 'initial_value'
		anonymize 'length_in_warehouse'
		anonymize 'list'
		anonymize 'meta_tag_ids'
		anonymize 'name'
		whitelist 'numeric_calc_type'
		anonymize 'olap_aggregator'
		whitelist 'olap_model_type'
		anonymize 'order'
		anonymize 'parent_filter_fields'
		whitelist 'parent_filter_id'
		anonymize 'parent_filter_result_fields'
		anonymize 'radio_button_columns'
		anonymize 'readonly_field'
		anonymize 'related_atoms_app'
		anonymize 'related_inverse_field'
		anonymize 'required'
		anonymize 'search_column'
		anonymize 'search_facet'
		anonymize 'search_result'
		anonymize 'tags'
		whitelist 'ui_action_id'
		whitelist 'updated_at'
		whitelist 'validate_unique_filter_id'
		anonymize 'validate_unique_scope'
		whitelist 'validator_id'
		anonymize 'value_column'
		anonymize 'values'
	end

=end
=begin
	collection 'user_groups' do
		primary_key '_id'
		whitelist 'created_at'
		anonymize 'name'
		anonymize 'private_access'
		whitelist 'updated_at'
		anonymize 'user_ids'
	end

=end
=begin
	collection 'app_view_panels' do
	end

=end
=begin
	collection 'collaborations' do
		primary_key '_id'
		whitelist 'context_id'
		whitelist 'context_type'
		whitelist 'created_at'
		anonymize 'role_ids'
		whitelist 'updated_at'
		whitelist 'user_id'
		whitelist 'user_type'
	end

=end
=begin
	collection 'app_data_views' do
		primary_key '_id'
		whitelist 'app_id'
		anonymize 'atom_filter'
		collection 'columns' do
			primary_key '_id'
			anonymize 'hidden'
			anonymize 'width'
			whitelist 'ext_id'
		end
		whitelist 'context_id'
		whitelist 'context_type'
		whitelist 'created_at'
		anonymize 'current_page'
		anonymize 'filters'
		document 'grouper' do
			primary_key '_id'
		end
		anonymize 'page_size'
		collection 'sorters' do
			primary_key '_id'
			anonymize 'property'
			anonymize 'direction'
		end
		anonymize 'sticky_state'
		whitelist 'updated_at'
		anonymize 'view_name'
	end

=end
=begin
	collection 'app_authorization_providers' do
	end

=end
=begin
	collection 'scheduled_event_logs' do
		primary_key '_id'
		whitelist 'app_id'
		anonymize 'app_name'
		whitelist 'batch_id'
		whitelist 'created_at'
		whitelist 'deleted_at'
		whitelist 'ended_at'
		anonymize 'event_desc'
		whitelist 'event_id'
		anonymize 'event_name'
		anonymize 'order'
		anonymize 'run_date'
		whitelist 'started_at'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'app_ui_actions' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'description'
		anonymize 'liquid_logic'
		anonymize 'name'
		anonymize 'oauth_secret'
		anonymize 'oauth_url'
		anonymize 'store_root'
		anonymize 'store_url'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'deprecated_number_generators' do
		primary_key '_id'
		anonymize 'counter'
		anonymize 'name'
	end

=end
=begin
	collection 'app_conditions' do
		primary_key '_id'
		whitelist 'deleted_at'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'description'
		anonymize 'liquid_condition'
		anonymize 'name'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'atom_properties_20150414163137' do
		primary_key '_id'
		anonymize 'allow_custom_text'
		anonymize 'allow_grid_popup'
		whitelist 'atom_dictionary_id'
		whitelist 'atom_dictionary_type'
		anonymize 'calculated'
		whitelist 'calculation_type'
		whitelist 'created_at'
		whitelist 'data_type'
		anonymize 'description'
		anonymize 'display_name'
		anonymize 'display_on_dashboard'
		anonymize 'expression'
		anonymize 'filter_column'
		anonymize 'initial_value'
		anonymize 'list'
		anonymize 'lookup_store'
		anonymize 'name'
		whitelist 'numeric_calc_type'
		anonymize 'olap_aggregator'
		anonymize 'olap_cube'
		whitelist 'olap_model_type'
		anonymize 'order'
		whitelist 'parent_filter_id'
		anonymize 'radio_button'
		anonymize 'readonly'
		anonymize 'related_atoms_app'
		anonymize 'related_inverse_field'
		anonymize 'required'
		anonymize 'search_column'
		anonymize 'search_facet'
		anonymize 'search_result'
		anonymize 'skip_empty_panel'
		anonymize 'skip_panel'
		anonymize 'skip_render'
		anonymize 'tags'
		whitelist 'ui_action_id'
		whitelist 'updated_at'
		anonymize 'validate_unique'
		whitelist 'validate_unique_filter_id'
		anonymize 'validate_unique_scope'
		whitelist 'validator_id'
		anonymize 'value_column'
		anonymize 'values'
	end

=end
=begin
	collection 'app_validators' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'deleted_at'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'description'
		anonymize 'input_mask'
		anonymize 'name'
		whitelist 'updated_at'
		anonymize 'validation_message'
	end

=end
=begin
	collection 'atom_field_representations_20150811150302' do
		primary_key '_id'
		whitelist 'deleted_at'
		whitelist 'atom_property_id'
		anonymize 'color'
		document 'config_options' do
			anonymize 'fieldLabel'
			anonymize 'hideLabel'
			anonymize 'labelWidth'
			anonymize 'name'
			anonymize 'show_required'
			anonymize 'emptyText'
			whitelist 'ui_action_id'
			anonymize 'evaluate'
			anonymize 'eval_field'
			whitelist 'validator_id'
			anonymize 'ui_action_url'
			anonymize 'hidden_condition'
			anonymize 'filter_by_condition'
			anonymize 'xtype_onit'
			anonymize 'listeners'
			anonymize 'style'
		end
		whitelist 'control_id'
		whitelist 'corporation_id'
		whitelist 'created_at'
		anonymize 'data_type_unmodifiable'
		anonymize 'display_mode'
		anonymize 'display_name'
		whitelist 'editable_form_type'
		anonymize 'empty_text'
		anonymize 'filter_by'
		anonymize 'height'
		anonymize 'hidden'
		anonymize 'hide_label'
		anonymize 'ignore'
		anonymize 'include_tooltip'
		anonymize 'label_width'
		whitelist 'multi_edit_data_view_id'
		anonymize 'name'
		anonymize 'readonly'
		anonymize 'readonly_field'
		anonymize 'right_label'
		anonymize 'size'
		whitelist 'tab_id'
		anonymize 'tooltip_text'
		anonymize 'type'
		anonymize 'unmodifiable'
		whitelist 'updated_at'
		whitelist 'view_tab_id'
	end

=end
=begin
	collection 'endorsements' do
		primary_key '_id'
		anonymize 'requires_action'
		whitelist 'endorsement_type'
		whitelist 'role_id'
		anonymize 'active'
		whitelist 'step_ref_id'
		whitelist 'collaboration_id'
		anonymize 'background'
		whitelist 'atom_id'
		anonymize 'status'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'suites' do
		primary_key '_id'
		anonymize 'app_ids'
		whitelist 'background_image_id'
		whitelist 'created_at'
		anonymize 'enabled'
		anonymize 'friendly_name'
		anonymize 'name'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'list_dictionaries' do
		primary_key '_id'
		anonymize 'calculate_fields'
		whitelist 'created_at'
		whitelist 'deleted_at'
		anonymize 'name'
		anonymize 'primary_key'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'app_reactions' do
		primary_key '_id'
		document 'parametrized_fields' do
		end
		document 'params' do
		end
		anonymize 'emails'
		anonymize 'email_fields'
		anonymize 'layout'
		anonymize 'roles'
		anonymize 'reply_to_address'
		whitelist '_type'
		whitelist 'deleted_at'
		anonymize 'action'
		whitelist 'app_id'
		anonymize 'body'
		whitelist 'created_at'
		anonymize 'description'
		whitelist 'event_id'
		anonymize 'from_address'
		anonymize 'from_name'
		anonymize 'history_message'
		anonymize 'history_name'
		anonymize 'reply_to_name'
		anonymize 'restrict_to_phase'
		anonymize 'subject'
		anonymize 'test_email'
		anonymize 'test_mode'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'lockers' do
	end

=end
=begin
	collection 'app_form_buttons' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'deleted_at'
		anonymize 'show_on_create'
		anonymize 'show_on_edit'
		anonymize 'show_on_anon'
		anonymize 'show_on_wizard'
		whitelist 'app_id'
		whitelist 'condition_id'
		whitelist 'created_at'
		anonymize 'name'
		anonymize 'order'
		anonymize 'text'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'user_preferences_providers' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'app_id'
		whitelist 'created_at'
		whitelist 'deleted_at'
		anonymize 'name'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'data_providers' do
	end

=end
=begin
	collection 'app_relation_chains' do
		primary_key '_id'
		whitelist 'role_mapping_id'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end
=begin
	collection 'deprecated_security_configurations' do
		primary_key '_id'
		whitelist 'auth_type'
		anonymize 'blacklisted_ips'
		whitelist 'created_at'
		anonymize 'dangerously_render_html_in_extjs'
		anonymize 'disable_anonymous_token'
		anonymize 'disable_browser_password_autofill'
		anonymize 'disable_last_attempt_warning'
		anonymize 'enable_api_auth_token'
		anonymize 'enable_auth_token'
		anonymize 'enable_one_time_token'
		anonymize 'enable_sso_user_auto_create'
		anonymize 'idp_cert_fingerprint'
		anonymize 'idp_slo_target_url'
		anonymize 'idp_sso_target_url'
		anonymize 'login_disclaimer_message'
		anonymize 'password_blacklist'
		anonymize 'password_login_button_text'
		anonymize 'password_max_age'
		anonymize 'password_min_length'
		anonymize 'password_recovery'
		anonymize 'password_require_digit'
		anonymize 'password_require_special'
		anonymize 'password_require_upcase'
		anonymize 'restrict_home_page'
		whitelist 'saml_issuer_id'
		anonymize 'session_timeout'
		anonymize 'sign_saml_request'
		anonymize 'sso_blacklist'
		whitelist 'sso_cert_type'
		anonymize 'sso_login_button_text'
		whitelist 'sso_type'
		whitelist 'updated_at'
		anonymize 'whitelisted_ips'
	end

=end
=begin
	collection 'app_tabs' do
		primary_key '_id'
		whitelist 'deleted_at'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'description'
		whitelist 'display_id'
		anonymize 'display_mode'
		anonymize 'display_name'
		anonymize 'hidden_liquid'
		anonymize 'name'
		anonymize 'role_ids'
		whitelist 'updated_at'
		anonymize 'view_name'
	end

=end
=begin
	collection 'suite_navigation_items' do
		primary_key '_id'
		whitelist '_type'
		whitelist 'app_id'
		whitelist 'created_at'
		anonymize 'display_name'
		anonymize 'icon_image_path'
		anonymize 'layout_order'
		anonymize 'name'
		whitelist 'suite_id'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'cache_hints' do
	end

=end
=begin
	collection 'users' do
		primary_key '_id'
		anonymize 'authentication_token'
		whitelist 'confirmation_sent_at'
		anonymize 'confirmation_token'
		whitelist 'confirmed_at'
		anonymize 'create_method'
		whitelist 'created_at'
		whitelist 'current_sign_in_at'
		anonymize 'current_sign_in_ip'
		anonymize 'deactivated'
		anonymize 'delegated_user_ids'
		anonymize 'drawer_open'
		anonymize 'email'
		anonymize 'encrypted_password'
		anonymize 'failed_attempts'
		anonymize 'has_used_password'
		anonymize 'home_page_filter'
		anonymize 'invitation_limit'
		whitelist 'last_sign_in_at'
		anonymize 'last_sign_in_ip'
		whitelist 'locked_at'
		anonymize 'maintenance_dismissed'
		anonymize 'name'
		whitelist 'password_changed_at'
		document 'preferences' do
		end
		whitelist 'reset_password_sent_at'
		anonymize 'reset_password_token'
		anonymize 'selected_categories'
		anonymize 'sign_in_count'
		anonymize 'status'
		anonymize 'unconfirmed_email'
		whitelist 'updated_at'
	end

=end
=begin
	collection 'onit_logs' do
		primary_key '_id'
		anonymize 'method'
		anonymize 'action'
		anonymize 'controller'
		anonymize 'path'
		document 'session' do
			anonymize 'warden|user|user|key'
			anonymize 'warden|user|user|session'
			whitelist '_csrf_token'
			whitelist 'pubnub_channel_id'
			anonymize 'page_size'
		end
		anonymize 'url'
		document 'params' do
		end
		anonymize 'ip'
		collection 'messages' do
			anonymize 'level'
			anonymize 'message'
		end
		anonymize 'request_time'
		anonymize 'application_name'
		anonymize 'user_email'
		anonymize 'response_code'
		anonymize 'runtime'
		anonymize 'is_exception'
		whitelist 'updated_at'
		whitelist 'created_at'
	end

=end

end

