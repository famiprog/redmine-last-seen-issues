class LastSeenIssuesPluginSettings

    public

    def self.get_setting(name)
        return Setting.plugin_redmine_last_seen_issues[name]
    end

    def self.get_max_number_of_issues
        issues_display_limit = LastSeenIssuesPluginSettings.get_setting(:number_of_issues_displayed)
        # for blank setting or not a number, default 5
        if (issues_display_limit.blank? || !(/\A\d+\z/).match(issues_display_limit))
          issues_display_limit = 5
        end
        return issues_display_limit
    end
end