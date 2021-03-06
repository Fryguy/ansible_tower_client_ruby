module AnsibleTowerClient
  class MockApi
    module InventorySource
      def self.collection
        [
          {
            "id"                   => 6,
            "type"                 => "inventory_source",
            "url"                  => "/api/v1/inventory_sources/6/",
            "related"              => {
              "created_by"                     => "/api/v1/users/1/",
              "credential"                     => "/api/v1/credentials/2/",
              "last_job"                       => "/api/v1/inventory_updates/199/",
              "notification_templates_error"   => "/api/v1/inventory_sources/6/notification_templates_error/",
              "notification_templates_success" => "/api/v1/inventory_sources/6/notification_templates_success/",
              "notification_templates_any"     => "/api/v1/inventory_sources/6/notification_templates_any/",
              "inventory_updates"              => "/api/v1/inventory_sources/6/inventory_updates/",
              "update"                         => "/api/v1/inventory_sources/6/update/",
              "hosts"                          => "/api/v1/inventory_sources/6/hosts/",
              "groups"                         => "/api/v1/inventory_sources/6/groups/",
              "schedules"                      => "/api/v1/inventory_sources/6/schedules/",
              "activity_stream"                => "/api/v1/inventories/6/activity_stream/",
              "inventory"                      => "/api/v1/inventories/2/",
              "group"                          => "/api/v1/groups/1/",
              "last_update"                    => "/api/v1/inventory_updates/199/"
            },
            "summary_fields"       => {
              "last_job"    => {
                "id"            => 199,
                "name"          => "dev-vc60 (Dev-VC60)",
                "description"   => "",
                "finished"      => "2017-02-20T21:56:21.910Z",
                "status"        => "failed",
                "failed"        => true,
                "license_error" => false
              },
              "group"       => {
                "id"                          => 1,
                "name"                        => "dev-vc60",
                "description"                 => "",
                "has_active_failures"         => true,
                "total_hosts"                 => 81,
                "hosts_with_active_failures"  => 1,
                "total_groups"                => 23,
                "groups_with_active_failures" => 9,
                "has_inventory_sources"       => true
              },
              "last_update" => {
                "id"            => 199,
                "name"          => "dev-vc60 (Dev-VC60)",
                "description"   => "",
                "status"        => "failed",
                "failed"        => true,
                "license_error" => false
              },
              "inventory"   => {
                "id"                              => 2,
                "name"                            => "Dev-VC60",
                "description"                     => "",
                "has_active_failures"             => true,
                "total_hosts"                     => 81,
                "hosts_with_active_failures"      => 1,
                "total_groups"                    => 24,
                "groups_with_active_failures"     => 10,
                "has_inventory_sources"           => true,
                "total_inventory_sources"         => 2,
                "inventory_sources_with_failures" => 2
              },
              "credential"  => {
                "id"          => 2,
                "name"        => "dev-vc60",
                "description" => "",
                "kind"        => "vmware",
                "cloud"       => true
              },
              "created_by"  => {
                "id"         => 1,
                "username"   => "admin",
                "first_name" => "",
                "last_name"  => ""
              }
            },
            "created"              => "2016-08-30T22:44:01.626Z",
            "modified"             => "2016-08-31T16:59:11.977Z",
            "name"                 => "dev-vc60 (Dev-VC60 - 6)",
            "description"          => "",
            "source"               => "vmware",
            "source_path"          => "",
            "source_script"        => nil,
            "source_vars"          => "",
            "credential"           => 2,
            "source_regions"       => "",
            "instance_filters"     => "",
            "group_by"             => "",
            "overwrite"            => false,
            "overwrite_vars"       => false,
            "last_job_run"         => "2017-02-20T21:56:21.910046Z",
            "last_job_failed"      => true,
            "has_schedules"        => false,
            "next_job_run"         => nil,
            "status"               => "failed",
            "inventory"            => 2,
            "group"                => 1,
            "update_on_launch"     => false,
            "update_cache_timeout" => 0,
            "last_update_failed"   => true,
            "last_updated"         => "2017-02-20T21:56:21.910046Z"
          }
        ]
      end

      def self.response
        {
          "count"    => collection.length,
          "next"     => nil,
          "previous" => nil,
          "results"  => collection
        }.to_json
      end
    end
  end
end
