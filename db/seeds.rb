# coding: utf-8
# Default admin user (change password after first deploy to a server!)
if Administrator.count == 0 && !Rails.env.test?
  admin = User.create!(username: 'admin', email: 'admin@consul.dev', password: '12345678', password_confirmation: '12345678', confirmed_at: Time.current, terms_of_service: "1")
  admin.create_administrator
end

# Names for the moderation console, as a hint for moderators
# to know better how to assign users with official positions
Setting["official_level_1_name"] = "Cargo oficial 1"
Setting["official_level_2_name"] = "Cargo oficial 2"
Setting["official_level_3_name"] = "Cargo oficial 3"
Setting["official_level_4_name"] = "Cargo oficial 4"
Setting["official_level_5_name"] = "Cargo oficial 5"

# Max percentage of allowed anonymous votes on a debate
Setting["max_ratio_anon_votes_on_debates"] = 50

# Max votes where a debate is still editable
Setting["max_votes_for_debate_edit"] = 1000

# Max votes where a proposal is still editable
Setting["max_votes_for_proposal_edit"] = 1000

# Max length for comments
Setting['comments_body_max_length'] = 1000

# Prefix for the Proposal codes
Setting["proposal_code_prefix"] = 'CONSUL'

# Number of votes needed for proposal success
Setting["votes_for_proposal_success"] = 53726

# Months to archive proposals
Setting["months_to_archive_proposals"] = 12

# Users with this email domain will automatically be marked as level 1 officials
# Emails under the domain's subdomains will also be included
Setting["email_domain_for_officials"] = ''

# Code to be included at the top (inside <head>) of every page (useful for tracking)
Setting['per_page_code_head'] = ''

# Code to be included at the top (inside <body>) of every page
Setting['per_page_code_body'] = ''

# Social settings
Setting["twitter_handle"] = 'pdxcleanenergy'
Setting["twitter_hashtag"] = '#pdxcleanenergy'
Setting["facebook_handle"] = 'pdxcleanenergy'
Setting["youtube_handle"] = nil
Setting["telegram_handle"] = nil
Setting["instagram_handle"] = nil

# Public-facing URL of the app.
Setting["url"] = "http://example.com"

# CONSUL installation's organization name
Setting["org_name"] = "Portland Clean Energy Fund"

<<<<<<< HEAD
# CONSUL installation place name (City, Country...)
Setting["place_name"] = "Portland"

=======
>>>>>>> cce852d3035617724f9935624d6424a6206b4a6c
# Meta tags for SEO
Setting["meta_title"] = nil
Setting["meta_description"] = nil
Setting["meta_keywords"] = nil

# Feature flags
Setting['feature.debates'] = true
Setting['feature.proposals'] = true
Setting['feature.featured_proposals'] = true
Setting['feature.spending_proposals'] = nil
Setting['feature.polls'] = true
Setting['feature.twitter_login'] = true
Setting['feature.facebook_login'] = true
Setting['feature.google_login'] = true
Setting['feature.public_stats'] = true
Setting['feature.budgets'] = true
Setting['feature.signature_sheets'] = true
Setting['feature.legislation'] = true
Setting['feature.user.recommendations'] = true
Setting['feature.user.recommendations_on_debates'] = true
Setting['feature.user.recommendations_on_proposals'] = true
Setting['feature.community'] = true
Setting['feature.map'] = nil
Setting['feature.allow_images'] = true
Setting['feature.allow_attached_documents'] = true
Setting['feature.help_page'] = true

# Spending proposals feature flags
Setting['feature.spending_proposal_features.voting_allowed'] = nil

# Proposal notifications
Setting['proposal_notification_minimum_interval_in_days'] = 3
Setting['direct_message_max_per_day'] = 3

# Email settings
Setting['mailer_from_name'] = 'CONSUL'
Setting['mailer_from_address'] = 'noreply@consul.dev'

# Verification settings
Setting['verification_offices_url'] = 'http://oficinas-atencion-ciudadano.url/'
Setting['min_age_to_participate'] = 16

# Featured proposals
Setting['featured_proposals_number'] = 3

# City map feature default configuration (Greenwich)
Setting['map_latitude'] = 51.48
Setting['map_longitude'] = 0.0
Setting['map_zoom'] = 10

# Related content
Setting['related_content_score_threshold'] = -0.3

Setting["feature.user.skip_verification"] = 'true'

Setting['feature.homepage.widgets.feeds.proposals'] = true
Setting['feature.homepage.widgets.feeds.debates'] = true
Setting['feature.homepage.widgets.feeds.processes'] = true

# Votes hot_score configuration
Setting['hot_score_period_in_days'] = 31

WebSection.create(name: 'homepage')
WebSection.create(name: 'debates')
WebSection.create(name: 'proposals')
WebSection.create(name: 'budgets')
WebSection.create(name: 'help_page')
