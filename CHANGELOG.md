# Changelog

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html)

## [v0.19](https://github.com/consul/consul/compare/v0.18.1...v0.19) (2019-02-27)

### Added

- **Admin:** Add cards to custom pages [\#3149](https://github.com/consul/consul/pull/3149)
- **Design/UX:** Refactor processes header colors and custom pages [\#3249](https://github.com/consul/consul/pull/3249)
- **Legislation:** Add image to legislation processes and banner colors [\#3152](https://github.com/consul/consul/pull/3152)
- **Mails:** Configurable email interceptor by environment [\#3251](https://github.com/consul/consul/pull/3251)
- **Maintenance-Rubocop:** Enable useless assignment rubocop rule [\#3120](https://github.com/consul/consul/pull/3120)
- **Maintenance-Rubocop:** Fix literal as condition [\#3313](https://github.com/consul/consul/pull/3313)
- **Milestones:** Manage milestone progress bars [\#3195](https://github.com/consul/consul/pull/3195)
- **Milestones:** Refactor milestones css [\#3196](https://github.com/consul/consul/pull/3196)
- **Milestones:** Add progress bar dev seeds [\#3197](https://github.com/consul/consul/pull/3197)
- **Milestones:** Add progress bars to milestones public view [\#3228](https://github.com/consul/consul/pull/3228)
- **Multi-language:** Make budgets translatable [\#3296](https://github.com/consul/consul/pull/3296)
- **Polls:** Add a description for open polls [\#3303](https://github.com/consul/consul/pull/3303)
- **Translations:** add new Russian translation [\#3204](https://github.com/consul/consul/pull/3204)
- **Translations:** add new Russian translation [\#3205](https://github.com/consul/consul/pull/3205)
- **Translations:** add new Russian translation [\#3206](https://github.com/consul/consul/pull/3206)
- **Translations:** add new Russian translation [\#3207](https://github.com/consul/consul/pull/3207)
- **Translations:** add new Russian translation [\#3208](https://github.com/consul/consul/pull/3208)
- **Translations:** add new Russian translation [\#3209](https://github.com/consul/consul/pull/3209)
- **Translations:** add new Russian translation [\#3210](https://github.com/consul/consul/pull/3210)
- **Translations:** add new Russian translation [\#3211](https://github.com/consul/consul/pull/3211)
- **Translations:** add new Russian translation [\#3212](https://github.com/consul/consul/pull/3212)
- **Translations:** add new Russian translation [\#3213](https://github.com/consul/consul/pull/3213)
- **Translations:** add new Russian translation [\#3214](https://github.com/consul/consul/pull/3214)
- **Translations:** add new Russian translation [\#3215](https://github.com/consul/consul/pull/3215)
- **Translations:** add new Russian translation [\#3216](https://github.com/consul/consul/pull/3216)
- **Translations:** add new Russian translation [\#3217](https://github.com/consul/consul/pull/3217)
- **Translations:** add new Russian translation [\#3218](https://github.com/consul/consul/pull/3218)
- **Translations:** add new Russian translation [\#3219](https://github.com/consul/consul/pull/3219)
- **Translations:** add new Russian translation [\#3220](https://github.com/consul/consul/pull/3220)
- **Translations:** add new Russian translation [\#3221](https://github.com/consul/consul/pull/3221)
- **Translations:** add new Russian translation [\#3222](https://github.com/consul/consul/pull/3222)
- **Translations:** add new Russian translation [\#3223](https://github.com/consul/consul/pull/3223)
- **Translations:** add new Russian translation [\#3224](https://github.com/consul/consul/pull/3224)
- **Translations:** add new Russian translation [\#3225](https://github.com/consul/consul/pull/3225)
- **Translations:** add new Russian translation [\#3226](https://github.com/consul/consul/pull/3226)
- **Translations:** New Crowdin translations [\#3305](https://github.com/consul/consul/pull/3305)
- **Translations:** Add locales for Indonesian, Russian, Slovak and Somali [\#3309](https://github.com/consul/consul/pull/3309)
- **Translations:** Remove untranslated locales [\#3310](https://github.com/consul/consul/pull/3310)

### Changed

- **Admin:** Admin tables order - sorting [\#3148](https://github.com/consul/consul/pull/3148)
- **Admin:** Hide polls results and stats to admins [\#3229](https://github.com/consul/consul/pull/3229)
- **Admin:** Allow change map image from admin [\#3230](https://github.com/consul/consul/pull/3230)
- **Admin:** Allow admins delete poll answer documents [\#3231](https://github.com/consul/consul/pull/3231)
- **Admin:** Admin polls list [\#3253](https://github.com/consul/consul/pull/3253)
- **Admin:** Show all system emails in Admin section [\#3326](https://github.com/consul/consul/pull/3326)
- **Admin:** Improve Admin settings section [\#3328](https://github.com/consul/consul/pull/3328)
- **Budgets:** Show current phase as selected on phase select on admin budgets form [\#3203](https://github.com/consul/consul/pull/3203)
- **Budgets:** Do not display alert when supporting in a group with a single heading [\#3278](https://github.com/consul/consul/pull/3278)
- **Budgets:** Include heading names in "headings limit reached" alert  [\#3290](https://github.com/consul/consul/pull/3290)
- **Budgets:** Consider having valuator group as having valuator [\#3314](https://github.com/consul/consul/pull/3314)
- **Budgets:** Show all investments in the map [\#3318](https://github.com/consul/consul/pull/3318)
- **Design/UX:** Improve UI of budgets index page [\#3250](https://github.com/consul/consul/pull/3250)
- **Design/UX:** Allow select column width for widget cards [\#3252](https://github.com/consul/consul/pull/3252)
- **Design/UX:** Change layout on homepage if feed debates and proposals are enabled [\#3269](https://github.com/consul/consul/pull/3269)
- **Design/UX:** Improve color picker on admin legislation process [\#3277](https://github.com/consul/consul/pull/3277)
- **Design/UX:** Removes next/incoming filters [\#3280](https://github.com/consul/consul/pull/3280)
- **Design/UX:** Add sorting icons to sortable tables [\#3324](https://github.com/consul/consul/pull/3324)
- **Design/UX:** Improve UX on admin section [\#3329](https://github.com/consul/consul/pull/3329)
- **Legislation:** Remove help and recommendations on legislation proposal new form [\#3200](https://github.com/consul/consul/pull/3200)
- **Legislation:** Sort Legislation Processes by descending start date [\#3202](https://github.com/consul/consul/pull/3202)
- **Maps:** Always show markers on budgets index map [\#3267](https://github.com/consul/consul/pull/3267)
- **Maintenance-Refactorings:** Add pending specs proposal notification limits [\#3174](https://github.com/consul/consul/pull/3174)
- **Maintenance-Refactorings:** Refactors images attributes [\#3170](https://github.com/consul/consul/pull/3170)
- **Maintenance-Refactorings:** Use find instead of find\_by\_id [\#3234](https://github.com/consul/consul/pull/3234)
- **Maintenance-Refactorings:** LegacyLegislation migration cleanup [\#3275](https://github.com/consul/consul/pull/3275)
- **Maintenance-Refactorings:** Replace sccs lint string quotes to double quotes [\#3281](https://github.com/consul/consul/pull/3281)
- **Maintenance-Refactorings:** Change single quotes to double quotes in folder /spec [\#3287](https://github.com/consul/consul/pull/3287)
- **Maintenance-Refactorings:** Reuse image attributes in legislation processes [\#3319](https://github.com/consul/consul/pull/3319)
- **Newsletters:** Send newsletter emails in order [\#3274](https://github.com/consul/consul/pull/3274)
- **Tags:** Set tags max length to 160 [\#3264](https://github.com/consul/consul/pull/3264)
- **Translations:** Update budgets confirm group es translation [\#3198](https://github.com/consul/consul/pull/3198)
- **Votes:** Use votes score instead of total votes on debates and legislation proposals [\#3291](https://github.com/consul/consul/pull/3291)

### Fixed

- **Budgets:** Show unfeasible and unselected investments for finished budgets [\#3272](https://github.com/consul/consul/pull/3272)
- **Design/UX:** Fix UI details for a better UX and design [\#3323](https://github.com/consul/consul/pull/3323)
- **Design/UX:** Budgets UI minor fixes [\#3268](https://github.com/consul/consul/pull/3268)
- **Polls:** Delete Booth Shifts with associated data [\#3292](https://github.com/consul/consul/pull/3292)
- **Proposals:** Fix random proposals order in the same session [\#3321](https://github.com/consul/consul/pull/3321)
- **Tags:** Fix valuation tags being overwritten [\#3330](https://github.com/consul/consul/pull/3330)
- **Translations:** Fix i18n and UI minor details [\#3191](https://github.com/consul/consul/pull/3191)
- **Translations:** Return a String in I18n method 'pluralize' [\#3307](https://github.com/consul/consul/pull/3307)

## [0.18.1](https://github.com/consul/consul/compare/v0.18...v0.18.1) (2019-01-17)

### Added

- **Legislation:** Legislation process homepage phase [\#3188](https://github.com/consul/consul/pull/3188)
- **Legislation:** Show documents on processes proposals phase [\#3136](https://github.com/consul/consul/pull/3136)
- **Maintenance-Refactorings:** Remove semicolons from controllers [\#3160](https://github.com/consul/consul/pull/3160)
- **Maintenance-Refactorings:** Remove before action not used [\#3167](https://github.com/consul/consul/pull/3167)
- **Maintenance-Rubocop:** Enable double quotes rubocop rule [\#3175](https://github.com/consul/consul/pull/3175)
- **Maintenance-Rubocop:** Enable line length rubocop rule [\#3165](https://github.com/consul/consul/pull/3165)
- **Maintenance-Rubocop:** Add rubocop rule to indent private methods [\#3134](https://github.com/consul/consul/pull/3134)

### Changed

- **Admin:** Improve CRUD budgets and content blocks [\#3173](https://github.com/consul/consul/pull/3173)
- **Design/UX:** new CRUD budgets, content blocks and heading map [\#3150](https://github.com/consul/consul/pull/3150)
- **Design/UX:** Processes key dates [\#3137](https://github.com/consul/consul/pull/3137)

### Fixed

- **Admin:** checks for deleted proposals [\#3154](https://github.com/consul/consul/pull/3154)
- **Admin:** Add default order for admin budget investments list [\#3151](https://github.com/consul/consul/pull/3151)
- **Budgets:** Bug Management Cannot create Budget Investment without a map location [\#3133](https://github.com/consul/consul/pull/3133)

## [0.18.0](https://github.com/consul/consul/compare/v0.17...v0.18) (2018-12-27)

### Added

- **Admin:** Admin poll questions index [\#3123](https://github.com/consul/consul/pull/3123)
- **Budgets:** Added feature to add content block to headings in sidebar [\#3043](https://github.com/consul/consul/pull/3043)
- **Budgets:** Add map to sidebar on Heading's page [\#3038](https://github.com/consul/consul/pull/3038)
- **Budgets:** Budget executions [\#3023](https://github.com/consul/consul/pull/3023)
- **Budgets:** Budget execution list [\#2864](https://github.com/consul/consul/pull/2864)
- **Design/UX:** Administrator ID [\#3056](https://github.com/consul/consul/pull/3056)
- **Legislation:** Draft phase on legislation processes [\#3105](https://github.com/consul/consul/pull/3105)
- **Legislation:** add homepage for legislation processes [\#3091](https://github.com/consul/consul/pull/3091)
- **Legislation:** Adds draft phase functionality in legislation processes [\#3048](https://github.com/consul/consul/pull/3048)
- **Maintenance:** Widgets dev seeds [\#3104](https://github.com/consul/consul/pull/3104)
- **Maintenance:** Add web sections to seeds [\#3037](https://github.com/consul/consul/pull/3037)
- **Maintenance-Rubocop:** Apply Rubocop not\_to rule [\#3118](https://github.com/consul/consul/pull/3118)
- **Maintenance-Rubocop:** Add not\_to Rubocop rule [\#3112](https://github.com/consul/consul/pull/3112)
- **Maintenance-Rubocop:** Add a "Reviewed by Hound" badge [\#3093](https://github.com/consul/consul/pull/3093)
- **Maintenance-Specs:** Add missing feature spec: Proposal Notifications In-app notifications from the proposal's author group notifications for the same proposal [\#3066](https://github.com/consul/consul/pull/3066)
- **Maintenance-Specs:** Add missing feature spec: Admin poll questions Create from successful proposal show [\#3065](https://github.com/consul/consul/pull/3065)
- **Maintenance-Specs:** Add missing feature spec Admin budget investments Edit Do not display valuators of an assigned group [\#3064](https://github.com/consul/consul/pull/3064)
- **Milestones:** Edit only existing languages in milestones summary [\#3103](https://github.com/consul/consul/pull/3103)
- **Milestones:** Update milestone status texts [\#3102](https://github.com/consul/consul/pull/3102)
- **Milestones:** Fix milestone validation [\#3101](https://github.com/consul/consul/pull/3101)
- **Milestones:** Add milestones to legislation processes  [\#3100](https://github.com/consul/consul/pull/3100)
- **Milestones:** Add milestones to proposals [\#3099](https://github.com/consul/consul/pull/3099)
- **Milestones:** Fix budget investment milestone translations migration [\#3097](https://github.com/consul/consul/pull/3097)
- **Milestones:** Make milestones code reusable [\#3095](https://github.com/consul/consul/pull/3095)
- **Milestones:** Make milestones controller polymorphic [\#3083](https://github.com/consul/consul/pull/3083)
- **Milestones:** Make milestones polymorphic [\#3057](https://github.com/consul/consul/pull/3057)
- **Polls:** Polls voted by [\#3089](https://github.com/consul/consul/pull/3089)
- **Proposals:** Featured proposals [\#3081](https://github.com/consul/consul/pull/3081)
- **Translations:** Added Slovenian translations [\#3062](https://github.com/consul/consul/pull/3062)
- **Translations:** New Crowdin translations [\#3050](https://github.com/consul/consul/pull/3050)
- **Translations:** Maintain translations for other languages after updatin main language [\#3046](https://github.com/consul/consul/pull/3046)
- **Translations:** New Crowdin translations [\#3005](https://github.com/consul/consul/pull/3005)
- **Translations:** Update i18n from Crowdin  [\#2998](https://github.com/consul/consul/pull/2998)

### Changed

- **Admin:** Improve action buttons aspect for small screens [\#3027](https://github.com/consul/consul/pull/3027)
- **Admin:** Improve visualization for small resolution [\#3025](https://github.com/consul/consul/pull/3025)
- **Admin:** Budgets admin [\#3012](https://github.com/consul/consul/pull/3012)
- **Budgets:** Budget investments social share [\#3053](https://github.com/consul/consul/pull/3053)
- **Design/UX:** Documents title [\#3131](https://github.com/consul/consul/pull/3131)
- **Design/UX:** Proposal create question [\#3122](https://github.com/consul/consul/pull/3122)
- **Design/UX:** Budget investments price explanation [\#3121](https://github.com/consul/consul/pull/3121)
- **Design/UX:** Change CRUD for budget groups and headings [\#3106](https://github.com/consul/consul/pull/3106)
- **Design/UX:** UI design [\#3080](https://github.com/consul/consul/pull/3080)
- **Design/UX:** Budgets unselected message [\#3033](https://github.com/consul/consul/pull/3033)
- **Design/UX:** Hide Featured section on Home Page if there are no cards [\#2899](https://github.com/consul/consul/pull/2899)
- **Maintenance:** Simplify pull request template [\#3088](https://github.com/consul/consul/pull/3088)
- **Maintenance:** Removes references to deleted general terms page [\#3079](https://github.com/consul/consul/pull/3079)
- **Maintenance:** Pages texts [\#3042](https://github.com/consul/consul/pull/3042)
- **Maintenance:** Removed icon\_home and fixed corresponding test [\##2970](https://github.com/consul/consul/pull/2970)
- **Maintenance-Gems:** \[Security\] Bump rails from 4.2.10 to 4.2.11 [\#3070](https://github.com/consul/consul/pull/3070)
- **Maintenance-Gems:** Bump database\_cleaner from 1.6.2 to 1.7.0 [\#3014](https://github.com/consul/consul/pull/3014)
- **Maintenance-Gems:** Bump rspec-rails from 3.7.2 to 3.8.1 [\#3003](https://github.com/consul/consul/pull/3003)
- **Maintenance-Gems:** Bump uglifier from 4.1.3 to 4.1.19 [\#3002](https://github.com/consul/consul/pull/3002)
- **Maintenance-Gems:** \[Security\] Bump rack from 1.6.10 to 1.6.11 [\#3000](https://github.com/consul/consul/pull/3000)
- **Maintenance-Gems:** Bump knapsack\_pro from 0.53.0 to 1.1.0 [\#2999](https://github.com/consul/consul/pull/2999)
- **Maintenance-Gems:** Bump letter\_opener\_web from 1.3.2 to 1.3.4 [\#2957](https://github.com/consul/consul/pull/2957)
- **Maintenance-Gems:** Bump rollbar from 2.15.5 to 2.18.0 [\#2923](https://github.com/consul/consul/pull/2923)
- **Maintenance-Gems:** Bump cancancan from 2.1.2 to 2.3.0 [\#2901](https://github.com/consul/consul/pull/2901)
- **Maintenance-Refactorings:** Remove custom "toda la ciudad" code [\#3111](https://github.com/consul/consul/pull/3111)
- **Maintenance-Refactorings:** Refactor legislation process subnav [\#3074](https://github.com/consul/consul/pull/3074)
- **Maintenance-Refactorings:** Rename Admin::Proposals to Admin::HiddenProposals  [\#3073](https://github.com/consul/consul/pull/3073)
- **Maintenance-Refactorings:** Budget investment show [\#3041](https://github.com/consul/consul/pull/3041)
- **Proposals:** Optimize task reset\_hot\_score [\#3116](https://github.com/consul/consul/pull/3116)
- **Proposals:** New algorithm for filter 'most active' [\#3098](https://github.com/consul/consul/pull/3098)
- **Translations:** Bring back date order translations [\#3127](https://github.com/consul/consul/pull/3127)
- **Translations:** i18n remove date.order key [\#3007](https://github.com/consul/consul/pull/3007)

### Fixed

- **Admin:** Fix pagination after selecting/unselecting budget investment [\#3034](https://github.com/consul/consul/pull/3034)
- **Admin:** Admin menu link [\#3032](https://github.com/consul/consul/pull/3032)
- **Design/UX:** Honeypot on users sign up form [\#3124](https://github.com/consul/consul/pull/3124)
- **Design/UX:** Fix scroll jump voting investments [\#3113](https://github.com/consul/consul/pull/3113)
- **Design/UX:** Globalize tabs [\#3054](https://github.com/consul/consul/pull/3054)
- **Design/UX:** Help feature [\#3040](https://github.com/consul/consul/pull/3040)
- **Design/UX:** Fix misleading title on account creation confirmation page (en, fr) [\#2944](https://github.com/consul/consul/pull/2944)
- **Legislation:** Fixes legislation processes key dates active class [\#3020](https://github.com/consul/consul/pull/3020)
- **Maintenance:** Fix scope warning  [\#3071](https://github.com/consul/consul/pull/3071)
- **Maintenance** Admin poll officers [\#3055](https://github.com/consul/consul/pull/3055)
- **Maintenance-Rubocop:** Remove trailing whitespace [\#3094](https://github.com/consul/consul/pull/3094)
- **Maintenance-Specs:** Fix flaky spec checking price without currency symbol [\#3115](https://github.com/consul/consul/pull/3115)
- **Maintenance-Specs:** Fix flaky localization specs [\#3096](https://github.com/consul/consul/pull/3096)
- **Maintenance-Specs:** Add frozen time condition to proposals phase spec [\#3090](https://github.com/consul/consul/pull/3090)
- **Maintenance-Specs:** Fix flaky spec: Legislation Proposals Each user has a different and consistent random proposals order [\#3085](https://github.com/consul/consul/pull/3085)
- **Maintenance-Specs:** Fix flaky spec: Each user has a different and consistent random proposals order [\#3076](https://github.com/consul/consul/pull/3076)
- **Maintenance-Specs:** Fix flaky spec: Welcome screen is not shown to organizations  [\#3072](https://github.com/consul/consul/pull/3072)
- **Maintenance-Specs:** Fix failing spec: Budget::Investment Reclassification store\_reclassified\_votes stores the votes for a reclassified investment [\#3067](https://github.com/consul/consul/pull/3067)
- **Maintenance-Specs:** Fix failing spec: Poll::Shift officer\_assignments creates and destroy corresponding officer\_assignments [\#3061](https://github.com/consul/consul/pull/3061)
- **Maintenance-Specs:** Update debates\_spec.rb [\#3029](https://github.com/consul/consul/pull/3029)
- **Maintenance-Specs:** Fix flaky spec: Admin budget investment mark/unmark visible to valuators [\#3008](https://github.com/consul/consul/pull/3008)
- **Polls:** Fix poll results accuracy [\#3030](https://github.com/consul/consul/pull/3030)
- **Translations:** Legislation dates [\#3039](https://github.com/consul/consul/pull/3039)
- **Translations:** Fixes english translations [\#3011](https://github.com/consul/consul/pull/3011)
- **Translations:** i18n remove duplicate locale folders [\#3006](https://github.com/consul/consul/pull/3006)
- **Valuation:** Fix crash in valuation when there are no budgets [\#3128](https://github.com/consul/consul/pull/3128)

## [0.17.0](https://github.com/consul/consul/compare/v0.16...v0.17) - 2018-10-31

### Added
- **Multi-language:** Migrate globalize data [\#2986](https://github.com/consul/consul/pull/2986)
- **Multi-language:** Update custom pages translations [\#2952](https://github.com/consul/consul/pull/2952)
- **Multi-language:** Make homepage content translatable [\#2924](https://github.com/consul/consul/pull/2924)
- **Multi-language:** Make collaborative legislation translatable [\#2912](https://github.com/consul/consul/pull/2912)
- **Multi-language:** Make admin notifications translatable [\#2910](https://github.com/consul/consul/pull/2910)
- **Multi-language:** Refactor translatable specs [\#2903](https://github.com/consul/consul/pull/2903)
- **Multi-language:** Refactor code shared by admin-translatable resources [\#2896](https://github.com/consul/consul/pull/2896)
- **Multi-language:** Change Translatable implementation to accommodate new requirements [\#2886](https://github.com/consul/consul/pull/2886)
- **Multi-language:** Make banners translatable [\#2865](https://github.com/consul/consul/pull/2865)
- **Multi-language:** Fix translatable bugs [\#2985](https://github.com/consul/consul/pull/2985)
- **Multi-language:** Make polls translatable [\#2914](https://github.com/consul/consul/pull/2914)
- **Multi-language:** Updates translatable custom pages [\#2913](https://github.com/consul/consul/pull/2913)
- **Translations:** Add all available languages [\#2964](https://github.com/consul/consul/pull/2964)
- **Translations:** Fix locale folder names [\#2963](https://github.com/consul/consul/pull/2963)
- **Translations:** Update translations from Crowdin [\#2961](https://github.com/consul/consul/pull/2961)
- **Translations:** Display language name or language key [\#2949](https://github.com/consul/consul/pull/2949)
- **Translations:** Avoid InvalidPluralizationData exception when missing translations [\#2936](https://github.com/consul/consul/pull/2936)
- **Translations:** Changes allegations dates label [\#2915](https://github.com/consul/consul/pull/2915)
- **Maintenance-Rubocop:** Add Hound basic configuration [\#2987](https://github.com/consul/consul/pull/2987)
- **Maintenance-Rubocop:** Update rubocop rules [\#2925](https://github.com/consul/consul/pull/2925)
- **Maintenance-Rubocop:** Fix Rubocop warnings for Admin controllers [\#2880](https://github.com/consul/consul/pull/2880)
- **Design/UX:** Adds status icons on polls poll group [\#2860](https://github.com/consul/consul/pull/2860)
- **Design/UX:** Feature help page [\#2933](https://github.com/consul/consul/pull/2933)
- **Design/UX:** Adds enable help page task [\#2960](https://github.com/consul/consul/pull/2960)
- **Budgets:** Allow select winner legislation proposals [\#2950](https://github.com/consul/consul/pull/2950)
- **Legislation-Proposals:** Add legislation proposal's categories [\#2948](https://github.com/consul/consul/pull/2948)
- **Legislation-Proposals:** Admin permissions in legislation proposals [\#2945](https://github.com/consul/consul/pull/2945)
- **Legislation-Proposals:** Random legislation proposal's order & pagination [\#2942](https://github.com/consul/consul/pull/2942)
- **Legislation-Proposals:** Legislation proposals imageable [\#2922](https://github.com/consul/consul/pull/2922)
- **CKeditor:** Bring back CKEditor images button [\#2977](https://github.com/consul/consul/pull/2977)
- **CKeditor:** Ckeditor4 update [\#2876](https://github.com/consul/consul/pull/2876)
- **Installation:** Add placeholder configuration for SMTP [\#2900](https://github.com/consul/consul/pull/2900)

### Changed
- **Newsletters:** Newsletter updates [\#2992](https://github.com/consul/consul/pull/2992)
- **Maintenance-Gems:** \[Security\] Bump rubyzip from 1.2.1 to 1.2.2 [\#2879](https://github.com/consul/consul/pull/2879)
- **Maintenance-Gems:** \[Security\] Bump nokogiri from 1.8.2 to 1.8.4 [\#2878](https://github.com/consul/consul/pull/2878)
- **Maintenance-Gems:** \[Security\] Bump ffi from 1.9.23 to 1.9.25 [\#2877](https://github.com/consul/consul/pull/2877)
- **Maintenance-Gems:** Bump jquery-rails from 4.3.1 to 4.3.3 [\#2929](https://github.com/consul/consul/pull/2929)
- **Maintenance-Gems:** Bump browser from 2.5.2 to 2.5.3 [\#2928](https://github.com/consul/consul/pull/2928)
- **Maintenance-Gems:** Bump delayed\_job\_active\_record from 4.1.2 to 4.1.3 [\#2927](https://github.com/consul/consul/pull/2927)
- **Maintenance-Gems:** Bump rubocop-rspec from 1.24.0 to 1.26.0 [\#2926](https://github.com/consul/consul/pull/2926)
- **Maintenance-Gems:** Bump paranoia from 2.4.0 to 2.4.1 [\#2909](https://github.com/consul/consul/pull/2909)
- **Maintenance-Gems:** Bump ancestry from 3.0.1 to 3.0.2 [\#2908](https://github.com/consul/consul/pull/2908)
- **Maintenance-Gems:** Bump i18n-tasks from 0.9.20 to 0.9.25 [\#2906](https://github.com/consul/consul/pull/2906)
- **Maintenance-Gems:** Bump coveralls from 0.8.21 to 0.8.22 [\#2905](https://github.com/consul/consul/pull/2905)
- **Maintenance-Gems:** Bump scss\_lint from 0.54.0 to 0.55.0 [\#2895](https://github.com/consul/consul/pull/2895)
- **Maintenance-Gems:** Bump unicorn from 5.4.0 to 5.4.1 [\#2894](https://github.com/consul/consul/pull/2894)
- **Maintenance-Gems:** Bump mdl from 0.4.0 to 0.5.0 [\#2892](https://github.com/consul/consul/pull/2892)
- **Maintenance-Gems:** Bump savon from 2.11.2 to 2.12.0 [\#2891](https://github.com/consul/consul/pull/2891)
- **Maintenance-Gems:** Bump capistrano-rails from 1.3.1 to 1.4.0 [\#2884](https://github.com/consul/consul/pull/2884)
- **Maintenance-Gems:** Bump autoprefixer-rails from 8.2.0 to 9.1.4 [\#2881](https://github.com/consul/consul/pull/2881)
- **Maintenance-Gems:** Upgrade gem coffee-rails to version 4.2.2 [\#2837](https://github.com/consul/consul/pull/2837)
- **Maintenance-Refactorings:** Adds custom javascripts folder [\#2921](https://github.com/consul/consul/pull/2921)
- **Maintenance-Refactorings:** Test suite maintenance [\#2888](https://github.com/consul/consul/pull/2888)
- **Maintenance-Refactorings:** Replace `.all.each` with `.find\_each` to reduce memory usage [\#2887](https://github.com/consul/consul/pull/2887)
- **Maintenance-Refactorings:** Split factories [\#2838](https://github.com/consul/consul/pull/2838)
- **Maintenance-Refactorings:** Change spelling for constant to TITLE\_LENGTH\_RANGE [\#2966](https://github.com/consul/consul/pull/2966)
- **Maintenance-Refactorings:** Remove described class cop [\#2990](https://github.com/consul/consul/pull/2990)
- **Maintenance-Refactorings:** Ease customization in processes controller [\#2982](https://github.com/consul/consul/pull/2982)
- **Maintenance-Refactorings:** Fix a misleading comment [\#2844](https://github.com/consul/consul/pull/2844)
- **Maintenance-Refactorings:** Simplify legislation proposals customization [\#2946](https://github.com/consul/consul/pull/2946)
- **Social-Share:** Improves social share messages for proposals [\#2994](https://github.com/consul/consul/pull/2994)

### Fixed
- **Maintenance-Specs:** Fix flaky specs: proposals and legislation Voting comments Update [\#2989](https://github.com/consul/consul/pull/2989)
- **Maintenance-Specs:** Fix flaky spec: Admin legislation questions Update Valid legislation question [\#2976](https://github.com/consul/consul/pull/2976)
- **Maintenance-Specs:** Fix flaky spec: Admin feature flags Enable a disabled feature  [\#2967](https://github.com/consul/consul/pull/2967)
- **Maintenance-Specs:** Fix flaky spec for translations [\#2962](https://github.com/consul/consul/pull/2962)
- **Maintenance-Specs:** Fix flaky spec: Admin legislation draft versions Update Valid legislation draft version [\#2995](https://github.com/consul/consul/pull/2995)
- **Maintenance-Specs:** Fix pluralization spec when using different default locale [\#2973](https://github.com/consul/consul/pull/2973)
- **Maintenance-Specs:** Fix time related specs [\#2911](https://github.com/consul/consul/pull/2911)
- **Design/UX:** UI design [\#2983](https://github.com/consul/consul/pull/2983)
- **Design/UX:** Custom fonts [\#2916](https://github.com/consul/consul/pull/2916)
- **Design/UX:** Show active tab in custom info texts [\#2898](https://github.com/consul/consul/pull/2898)
- **Design/UX:** Fix navigation menu under Legislation::Proposal show view [\#2835](https://github.com/consul/consul/pull/2835)
- **Social-Share:** Fix bug in facebook share link [\#2852](https://github.com/consul/consul/pull/2852)

## [0.16.0](https://github.com/consul/consul/compare/v0.15...v0.16) - 2018-07-16

### Added
- **Budgets:** Budgets investment show messages https://github.com/consul/consul/pull/2766
- **Budgets:** Add Valuator Group name validation & related specs https://github.com/consul/consul/pull/2576
- **Budgets:** Investment milestone's project status https://github.com/consul/consul/pull/2706
- **Budgets:** Budget statuses https://github.com/consul/consul/pull/2705
- **Budgets:** Display only selected budget investmests in "Publishing prices" phase https://github.com/consul/consul/pull/2657
- **Budgets:** Budgets see results https://github.com/consul/consul/pull/2620
- **Budgets:** Show 'See Results' button in budget admin panel https://github.com/consul/consul/pull/2632
- **Budgets:** Adds message to selected budget investments https://github.com/consul/consul/pull/2622
- **Budgets:** Fixes Issue \#2604 https://github.com/consul/consul/pull/2614
- **Officing:** Officing not to vote https://github.com/consul/consul/pull/2726
- **Officing:** Officing sidebar menu https://github.com/consul/consul/pull/2725
- **Homepage:** Homepage cards https://github.com/consul/consul/pull/2693
- **Homepage:** Adding homepage header and cards seeds https://github.com/consul/consul/pull/2679
- **Homepage:** Add customization of homepage from admin section https://github.com/consul/consul/pull/2641
- **Globalization:** Allow admin generated content to be translatable https://github.com/consul/consul/pull/2619
- **Recommendations:** Debates and proposals recommendations for users https://github.com/consul/consul/pull/2760
- **Notifications:** Allow author notifications to be moderated https://github.com/consul/consul/pull/2717
- **Configuration:** Document upload setting https://github.com/consul/consul/pull/2585
- **Maintenance:** add proposal image on dev\_seeds task https://github.com/consul/consul/pull/2768
- **Docker:** Add imagemagick package to Docker configuration https://github.com/consul/consul/pull/2655
- **Design/UX:** Legislation help gif https://github.com/consul/consul/pull/2732

### Changed
- **Budgets:** Add valuator groups assigned to investments to admin tables & csv export https://github.com/consul/consul/pull/2592
- **Design/UX:** Adds ballot booths menu on admin https://github.com/consul/consul/pull/2716
- **Design/UX:** Polls UI https://github.com/consul/consul/pull/2765
- **Design/UX:** Manager UI https://github.com/consul/consul/pull/2715
- **Design/UX:** Homepage design https://github.com/consul/consul/pull/2694
- **Design/UX:** Admin UI https://github.com/consul/consul/pull/2666
- **Design/UX:** Minor fixes https://github.com/consul/consul/pull/2665
- **Design/UX:** Homepage layout https://github.com/consul/consul/pull/2663
- **Design/UX:** Admin form improvements https://github.com/consul/consul/pull/2645
- **Maintenance:** Regenerate Gemfile.lock https://github.com/consul/consul/pull/2701
- **Maintenance:** Update Sprockets to fix vulnerability https://github.com/consul/consul/pull/2758
- **Maintenance:** Split spec common actions support helper https://github.com/consul/consul/pull/2653
- **Maintenance:** Split admin settings https://github.com/consul/consul/pull/2650
- **Maintenance:** Update README with production configuration https://github.com/consul/consul/pull/2648
- **Maintenance:** Remove sitemap generator output when running specs https://github.com/consul/consul/pull/2599
- **Maintenance:** Avoid db:dev\_seed log print when run from its test https://github.com/consul/consul/pull/2598
- **Maintenance:** Foundation update https://github.com/consul/consul/pull/2590
- **Docker:** Docker/docker-compose enhancements https://github.com/consul/consul/pull/2661

### Fixed
- **Budgets:** Fix valuation heading filters https://github.com/consul/consul/pull/2578
- **Budgets:** Budgets homepage map fixes https://github.com/consul/consul/pull/2654
- **Budgets:** Display message in budget's index when there are no budgets https://github.com/consul/consul/pull/2575
- **Proposals:** Fix validation error when creating proposals without user verification https://github.com/consul/consul/pull/2775
- **Design/UX:** UI design https://github.com/consul/consul/pull/2733
- **Design/UX:** A11y https://github.com/consul/consul/pull/2724
- **Design/UX:** UI design https://github.com/consul/consul/pull/2608
- **Design/UX:** Fixes admin menu toggle https://github.com/consul/consul/pull/2692
- **Maintenance:** Fix flaky spec: Budget Investments Show milestones https://github.com/consul/consul/pull/2719
- **Maintenance:** Fix flaky specs: Votes Debates and Voting comments Update https://github.com/consul/consul/pull/2734
- **Maintenance:** Fix flaky specs using CKEditor https://github.com/consul/consul/pull/2711
- **Maintenance:** Fix suggestions being requested with every keystroke https://github.com/consul/consul/pull/2708
- **Maintenance:** Fix valuation heading filters https://github.com/consul/consul/pull/2702
- **Maintenance:** Flaky spec: Polls Concerns behaves like notifiable in-app Multiple users commented on my notifiable https://github.com/consul/consul/pull/2699
- **Maintenance:** Fix flaky spec: Proposals Voting Voting proposals on behalf of someone in show view https://github.com/consul/consul/pull/2697
- **Maintenance:** Fix flaky spec: Admin budgets Manage groups and headings Create group https://github.com/consul/consul/pull/2696
- **Maintenance:** Fix flaky specs: Emails Budgets Selected/Unselected investment https://github.com/consul/consul/pull/2695
- **Maintenance:** Fix flaky specs: Officing Results Add/Edit results https://github.com/consul/consul/pull/2712
- **Maintenance:** Add issue template https://github.com/consul/consul/pull/2722
- **Users activity:** Deal gracefully with hidden followable in my activity https://github.com/consul/consul/pull/2752
- **Recommendations:** Deal gracefully with recommendations of hidden proposals https://github.com/consul/consul/pull/2751
- **Maps:** Fix MapLocation json\_data to return mappable ids https://github.com/consul/consul/pull/2613

## [0.15.0](https://github.com/consul/consul/compare/v0.14...v0.15) - 2018-05-23

### Added
- **Budgets:** Show 'See Results' button in budget admin panel https://github.com/consul/consul/pull/2632
- **Budgets:** Add valuator groups  assigned to investments to admin tables & csv export https://github.com/consul/consul/pull/2592
- **Budgets:** Add Valuator Group name validation & related specs https://github.com/consul/consul/pull/2576
- **Budgets:** Display message in budget's index when there are no budgets https://github.com/consul/consul/pull/2575
- **Budgets:** Allow supporting investments on more than one heading per group https://github.com/consul/consul/pull/2546
- **Budgets:** User segment for users that haven't supported in budget https://github.com/consul/consul/pull/2540
- **Budgets:** Allow Budget Group names to be edited https://github.com/consul/consul/pull/2504
- **Budgets:** Add valuator groups https://github.com/consul/consul/pull/2510
- **Budgets:** Add column show to valuators https://github.com/consul/consul/pull/2342
- **Globalization:** Allow admin generated content to be translatable https://github.com/consul/consul/pull/2619
- **Globalization:** New Crowdin translations https://github.com/consul/consul/pull/2572
- **Notifications:** Extend notifications to be marked as read or unread https://github.com/consul/consul/pull/2549
- **Notifications:** Let users mark Notifications as read https://github.com/consul/consul/issues/2478
- **Accounts:** Admin users https://github.com/consul/consul/pull/2538
- **Configuration:** Document upload setting https://github.com/consul/consul/pull/2585
- **Configuration:** Added setting on admin to skip user verification https://github.com/consul/consul/pull/2399
- **Management:** Let managers reset user's password https://github.com/consul/consul/pull/2548
- **Design:** View mode selector on lists https://github.com/consul/consul/issues/2509
- **Maintenance:** Make config.time\_zone configurable at secrets.yml https://github.com/consul/consul/pull/2468
- **Maintenance:** Include Node.js as requirement on README https://github.com/consul/consul/pull/2486
- **Maintenance:** Add Node.js as requirement on README \(spanish\) https://github.com/consul/consul/pull/2550

### Changed
- **Budgets:** Display unfeasibility explanation only when valuation has finished https://github.com/consul/consul/pull/2570
- **Budgets:** Admin budget investment info https://github.com/consul/consul/pull/2539
- **Budgets:** Restrict valuators access to edit/valute only on valuating phase https://github.com/consul/consul/pull/2535
- **Budgets:** Valuators cannot reopen finished valuations https://github.com/consul/consul/pull/2518
- **Budgets:** Heading link on budgets message https://github.com/consul/consul/pull/2528
- **Newsletters:** Admin newsletter email refactor https://github.com/consul/consul/pull/2474
- **Newsletters:** Admin emails list download https://github.com/consul/consul/pull/2466
- **Newsletters:** Admin newsletter emails https://github.com/consul/consul/pull/2462
- **Maintenance:** Migration from PhantomJS to Headless Chrome https://github.com/consul/consul/pull/2534
- **Maintenance:** Update rubocop gem from 0.53.0 to 0.54.0 https://github.com/consul/consul/pull/2574
- **Maintenance:** Update rails-html-sanitizer gem version to 1.0.4 https://github.com/consul/consul/pull/2568
- **Maintenance:** Improve README code syntax https://github.com/consul/consul/pull/2561
- **Maintenance:** Improve Github's Pull Request Template file https://github.com/consul/consul/pull/2515
- **Maintenance:** Remove sitemap generator output when running specs https://github.com/consul/consul/pull/2599
- **Maintenance:** Avoid db:dev\_seed log print when run from its test https://github.com/consul/consul/pull/2598
- **Maintenance:** Update loofah gem to 2.2.1 version https://github.com/consul/consul/pull/2545
- **Maintenance:** Rubocop & rubocop-rspec gem & config updates https://github.com/consul/consul/pull/2524

### Fixed
- **Budgets:** Fix valuation heading filters https://github.com/consul/consul/pull/2578
- **Budgets:** Fixes budgets ui for all phases https://github.com/consul/consul/pull/2537
- **Budgets:** Fixes Issue \#2604 https://github.com/consul/consul/pull/2614
- **Maps:** Fix MapLocation json\_data to return mappable ids https://github.com/consul/consul/pull/2613
- **Accounts:** Fix to change email address from my account https://github.com/consul/consul/pull/2569
- **Social share:** Fixes social share buttons https://github.com/consul/consul/pull/2525
- **Newsletters:** Fixed how newsletters controller and mailer handle recipients https://github.com/consul/consul/pull/2492
- **Newsletters:** Fix UserSegment feasible and undecided investment authors https://github.com/consul/consul/pull/2491
- **Newsletters:** Remove empty emails from user segment usages
- **Design:** Mode view https://github.com/consul/consul/pull/2567
- **Design:** Minor fixes https://github.com/consul/consul/pull/2566
- **Design:** Improve Documents list https://github.com/consul/consul/pull/2490
- **Design:** UI fixes https://github.com/consul/consul/pull/2489
- **Design:** Cleans legislation proposals https://github.com/consul/consul/pull/2527
- **Design:** Design minor fixes https://github.com/consul/consul/pull/2465
- **Design:** Help text https://github.com/consul/consul/pull/2452
- **Maintenance:** Fix routes deprecation warning for `to:` usage https://github.com/consul/consul/pull/2560
- **Maintenance:** Fix date parsing to take the TimeZone in account  https://github.com/consul/consul/pull/2559
- **Maintenance:** Fix `rake db:dev\_seed` task flaky spec https://github.com/consul/consul/pull/2522
- **Maintenance:** Fix Email Spec comment random failures https://github.com/consul/consul/pull/2506
- **Maintenance:** Fix flaky spec: Residence Assigned officers Error https://github.com/consul/consul/pull/2458
- **Maintenance:** Fix for flaky spec in Officing spec test file https://github.com/consul/consul/pull/2543
- **Maintenance:** Fix Flaky spec: Moderate debates Hide https://github.com/consul/consul/pull/2542
- **Maintenance:** Fix flaky spec: random investments order scenario https://github.com/consul/consul/pull/2536
- **Maintenance:** Fixed flaky spec: missing comment on legislation annotation https://github.com/consul/consul/pull/2455
- **Maintenance:** Fix flaky spec: random investments order scenario  https://github.com/consul/consul/pull/2454
- **Maintenance:** Fix flaky spec: users without email should not receive emails https://github.com/consul/consul/pull/2453
- **Maintenance:** Flaky spec fix: Debates Show: "Back" link directs to previous page https://github.com/consul/consul/pull/2513
- **Maintenance:** Fix Exception in home page https://github.com/consul/consul/issues/2621
- **Maintenance:** Fix for budget's index when there are no budgets https://github.com/consul/consul/issues/2562
- **Maintenance:** Fix menu highlighted in admin section https://github.com/consul/consul/issues/2556

## [0.14.0](https://github.com/consul/consul/compare/v0.13...v0.14) - 2018-03-08

### Added
- Admin newsletter emails https://github.com/consul/consul/pull/2462
- Admin emails list download https://github.com/consul/consul/pull/2466
- Alert message when a user deletes an investment project from "My activity" https://github.com/consul/consul/pull/2385
- Missing polls button on help page https://github.com/consul/consul/pull/2452
- New legislation processes section on help page https://github.com/consul/consul/pull/2452
- Docs\(readme\): Include Node.js as requirement https://github.com/consul/consul/pull/2486

### Changed
- Improved Document lists https://github.com/consul/consul/pull/2490
- Valuators cannot reopen finished valuations https://github.com/consul/consul/pull/2518
- Show investment links only on phase balloting or later https://github.com/consul/consul/pull/2386
- Improve Github's Pull Request Template file https://github.com/consul/consul/pull/2515
- List Budget Investment's milestones ordered by publication date https://github.com/consul/consul/issues/2429
- Admin newsletter email refactor https://github.com/consul/consul/pull/2474
- Budgets map improvements https://github.com/consul/consul/pull/2552

### Deprecated
- Totally remove investment's internal_comments https://github.com/consul/consul/pull/2406

### Fixed
- Fixes social share buttons: https://github.com/consul/consul/pull/2525
- Heading link on budgets message: https://github.com/consul/consul/pull/2528
- Improve spec boot time and clean up of test logs https://github.com/consul/consul/pull/2444
- Use user locale instead of default locale to format currencies https://github.com/consul/consul/pull/2443
- Flaky spec: random investments order scenario https://github.com/consul/consul/pull/2454
- Flaky spec: users without email should not receive emails https://github.com/consul/consul/pull/2453
- Flaky spec: missing comment on legislation annotation https://github.com/consul/consul/pull/2455
- Flaky spec: Residence Assigned officers error https://github.com/consul/consul/pull/2458
- Flaky spec fix: Debates Show: "Back" link directs to previous page https://github.com/consul/consul/pull/2513
- Flaky spec fix: Email Spec comment random failures https://github.com/consul/consul/pull/2506
- Expire Coveralls badge cache https://github.com/consul/consul/pull/2445
- Fixed how newsletters controller and mailer handle recipients https://github.com/consul/consul/pull/2492
- Fix UserSegment feasible and undecided investment authors https://github.com/consul/consul/pull/2491
- Remove empty emails from user segment usages https://github.com/consul/consul/pull/2516
- Clean html and scss legislation proposals: https://github.com/consul/consul/pull/2527
- UI fixes https://github.com/consul/consul/pull/2489 https://github.com/consul/consul/pull/2465

## [0.13.0](https://github.com/consul/consul/compare/v0.12...v0.13) - 2018-02-05

### Added
- Added Drafting phase to Budgets https://github.com/consul/consul/pull/2285
- Added 'Publish investments price' phase to Budgets https://github.com/consul/consul/pull/2296
- Allow admins to destroy budgets without investments https://github.com/consul/consul/pull/2283
- Added CSV download link to budget_investments https://github.com/consul/consul/pull/2147
- Added actions to edit and delete a budget's headings https://github.com/consul/consul/pull/1917
- Allow Budget Investments to be Related to other content https://github.com/consul/consul/pull/2311
- New Budget::Phase model to add dates, enabling and more https://github.com/consul/consul/pull/2323
- Add optional Guide page to help users decide between Proposal & Investment creation https://github.com/consul/consul/pull/2343
- Add advanced search menu to investments list https://github.com/consul/consul/pull/2142
- Allow admins to edit Budget phases https://github.com/consul/consul/pull/2353
- Budget new Information phase https://github.com/consul/consul/pull/2349
- Add search & sorting options to Admin's Budget Investment list https://github.com/consul/consul/pull/2378
- Added internal valuation comment thread to replace internal_comments https://github.com/consul/consul/pull/2403
- Added rubocop-rspec gem, enabled cops one by one fixing offenses.
- Added Capistrano task to automate maintenance mode https://github.com/consul/consul/pull/1932

### Changed
- Display proposal and investment image when sharing in social networks https://github.com/consul/consul/pull/2202
- Redirect admin to budget lists after edit https://github.com/consul/consul/pull/2284
- Improve budget investment form https://github.com/consul/consul/pull/2280
- Prevent edition of investments if budget is in the final phase https://github.com/consul/consul/pull/2223
- Design Improvements https://github.com/consul/consul/pull/2327
- Change concept of current budget to account for multiple budgets https://github.com/consul/consul/pull/2322
- Investment valuation finished alert https://github.com/consul/consul/pull/2324
- Finished budgets list order https://github.com/consul/consul/pull/2355
- Improvements for Admin::Budget::Investment filters https://github.com/consul/consul/pull/2344
- Advanced filters design https://github.com/consul/consul/pull/2379
- Order Budget group headings by name https://github.com/consul/consul/pull/2367
- Show only current budget tags in admin budget page https://github.com/consul/consul/pull/2387
- Correctly show finished budgets at budget index https://github.com/consul/consul/pull/2369
- Multiple Budgets UI improvements https://github.com/consul/consul/pull/2297
- Improved budget heading names at dropdowns https://github.com/consul/consul/pull/2373
- Improved Admin list of budget headings https://github.com/consul/consul/pull/2370
- Remove usage of Investment's internal_comments https://github.com/consul/consul/pull/2404
- Made English the default app locale https://github.com/consul/consul/pull/2371
- Improve texts of help page https://github.com/consul/consul/pull/2405
- Show error message when relating content to itself https://github.com/consul/consul/pull/2416
- Split 'routes.rb' file into multiple small files https://github.com/consul/consul/pull/1908
- Removed legislation section arrows and duplicate html tag thanks to [xarlybovi](https://github.com/xarlybovi) https://github.com/consul/consul/issues/1704
- Updated multiple minor & patch gem versions thanks to [Depfu](https://depfu.com)
- Clean up Travis logs https://github.com/consul/consul/pull/2357
- Updated translations to other languages from Crowdin contributions https://github.com/consul/consul/pull/2347 especial mention to @ferraniki for 100% Valencian translation!
- Updated rubocop version and ignored all cops by default

### Deprecated
- Budget's `description_*` columns will be erased from database in next release. Please run rake task `budgets:phases:generate_missing` to migrate them. Details at Warning section of https://github.com/consul/consul/pull/2323
- Budget::Investment's `internal_comments` attribute usage was removed, because of https://github.com/consul/consul/pull/2403, run rake task `investments:internal_comments:migrate_to_thread` to migrate existing values to the new internal comments thread. In next release database column will be removed.

### Removed
- Spending Proposals urls from sitemap, that model is getting entirely deprecated soon.

### Fixed
- Fix Budget Investment's milestones order https://github.com/consul/consul/pull/2431
- Only change budget slugs if its on draft phase https://github.com/consul/consul/pull/2434
- Fixed an internal bug that allowed users to remove documents from other user's Proposals & Investments https://github.com/consul/consul/commit/97ec551178591ea9f59744f53c7aadcaad5e679a#diff-bc7e874fa3fd44e4b6f941b434d1d921
- Fixed deprecation warning in specs https://github.com/consul/consul/pull/2293
- Fix social images meta tags https://github.com/consul/consul/pull/2153
- Non translated strings & typos https://github.com/consul/consul/pull/2279
- Links to hidden comments on admin & moderation https://github.com/consul/consul/pull/2395

### Security
- Upgraded Paperclip version up to 5.2.1 to fix security problem https://github.com/consul/consul/pull/2393
- Upgraded nokogiri: 1.8.1 → 1.8.2 https://github.com/consul/consul/pull/2413

## [0.12.0](https://github.com/consul/consul/compare/v0.11...v0.12) - 2018-01-03

### Added
- Added Images to Budget Investment's Milestones https://github.com/consul/consul/pull/2186
- Added Documents to Budget Investment's Milestones https://github.com/consul/consul/pull/2191
- Added Publication Date Budget Investment's Milestones https://github.com/consul/consul/pull/2188
- New setting `feature.allow_images` to allow upload and show images for both (proposals and budget investment projects). Set it manually through console with `Setting['feature.allow_images'] = true`
- Related Content feature. Now Debates & Proposals can be related https://github.com/consul/consul/issues/1164
- Map validations https://github.com/consul/consul/pull/2207
- Added spec for 'rake db:dev_seed' task https://github.com/consul/consul/pull/2201
- Adds timestamps to polls https://github.com/consul/consul/pull/2180 (Run `rake polls:initialize_timestamps` to initialize attributes created_at and updated_at with the current time for all existing polls, or manually through console set correct values)

### Changed
- Some general Design improvements https://github.com/consul/consul/pull/2170 https://github.com/consul/consul/pull/2198
- Improved Communities design https://github.com/consul/consul/pull/1904
- Made Milestones description required & hided title usage https://github.com/consul/consul/pull/2195
- Improved generic error message https://github.com/consul/consul/pull/2217
- Improved Sitemap for SEO https://github.com/consul/consul/pull/2215

### Fixed
- Notifications for hidden resources https://github.com/consul/consul/pull/2172
- Notifications exceptions https://github.com/consul/consul/pull/2187
- Fixed map location update https://github.com/consul/consul/pull/2213

## [0.11.0](https://github.com/consul/consul/compare/v0.10...v0.11) - 2017-12-05

### Added
- Allow social media image meta tags to be overwritten https://github.com/consul/consul/pull/1756 & https://github.com/consul/consul/pull/2153
- Allow users to verify their account against a local Census https://github.com/consul/consul/pull/1752
- Make Proposals & Budgets Investments followable by users https://github.com/consul/consul/pull/1727
- Show user followable activity on public user page https://github.com/consul/consul/pull/1750
- Add Budget results view & table https://github.com/consul/consul/pull/1748
- Improved Budget winners calculations https://github.com/consul/consul/pull/1738
- Allow Documents to be uploaded to Proposals and Budget Investments https://github.com/consul/consul/pull/1809
- Allow Communities creation on Proposals and Budget Investments (Run rake task 'communities:associate_community') https://github.com/consul/consul/pull/1815 https://github.com/consul/consul/pull/1833
- Allow user to geolocate Proposals and Budget Investments on a map https://github.com/consul/consul/pull/1864
- Legislation Process Proposals https://github.com/consul/consul/pull/1906
- Autocomplete user tags https://github.com/consul/consul/pull/1905
- GraphQL API docs https://github.com/consul/consul/pull/1763
- Show recommended proposals and debates to users based in their interests https://github.com/consul/consul/pull/1824
- Allow images & videos to be added to Poll questions https://github.com/consul/consul/pull/1835 https://github.com/consul/consul/pull/1915
- Add Poll Shifts, to soon replace Poll OfficerAssignments usage entirely (for now just partially)
- Added dropdown menu for advanced users https://github.com/consul/consul/pull/1761
- Help text headers and footers https://github.com/consul/consul/pull/1807
- Added a couple of steps for linux installation guidelines https://github.com/consul/consul/pull/1846
- Added TotalResult model, to replace Poll::FinalRecount https://github.com/consul/consul/pull/1866 1885
- Preview Budget Results by admins https://github.com/consul/consul/pull/1923
- Added comments to Polls https://github.com/consul/consul/pull/1961
- Added images & videos to Polls https://github.com/consul/consul/pull/1990 https://github.com/consul/consul/pull/1989
- Poll Answers are orderable now https://github.com/consul/consul/pull/2037
- Poll Booth Assigment management https://github.com/consul/consul/pull/2087
- Legislation processes documents https://github.com/consul/consul/pull/2084
- Poll results https://github.com/consul/consul/pull/2082
- Poll stats https://github.com/consul/consul/pull/2075
- Poll stats on admin panel https://github.com/consul/consul/pull/2102
- Added investment user tags admin interface https://github.com/consul/consul/pull/2068
- Added Poll comments to GraphQL API https://github.com/consul/consul/pull/2148
- Added option to unassign Valuator role https://github.com/consul/consul/pull/2110
- Added search by name/email on several Admin sections https://github.com/consul/consul/pull/2105
- Added Docker support https://github.com/consul/consul/pull/2127 & documentation https://consul_docs.gitbooks.io/docs/content/en/getting_started/docker.html
- Added population restriction validation on Budget Headings https://github.com/consul/consul/pull/2115
- Added a `/consul.json` route that returns installation details (current release version and feature flags status) for a future dashboard app https://github.com/consul/consul/pull/2164

### Changed
- Gem versions locked & cleanup https://github.com/consul/consul/pull/1730
- Upgraded many minor versions https://github.com/consul/consul/pull/1747
- Rails 4.2.10 https://github.com/consul/consul/pull/2128
- Updated Code of Conduct to use contributor covenant 1.4  https://github.com/consul/consul/pull/1733
- Improved consistency to all "Go back" buttons https://github.com/consul/consul/pull/1770
- New CONSUL brand https://github.com/consul/consul/pull/1808
- Admin panel redesign https://github.com/consul/consul/pull/1875 https://github.com/consul/consul/pull/2060
- Swapped Poll White/Null/Total Results for Poll Recount https://github.com/consul/consul/pull/1963
- Improved Poll index view https://github.com/consul/consul/pull/1959 https://github.com/consul/consul/pull/1987
- Update secrets and deploy secrets example files https://github.com/consul/consul/pull/1966
- Improved Poll Officer panel features
- Consistency across all admin profiles sections https://github.com/consul/consul/pull/2089
- Improved dev_seeds with more Poll content https://github.com/consul/consul/pull/2121
- Comment count now updates live after publishing a new one https://github.com/consul/consul/pull/2090

### Removed
- Removed Tolk gem usage, we've moved to Crowdin service https://github.com/consul/consul/pull/1729
- Removed Polls manual recounts (model Poll::FinalRecount) https://github.com/consul/consul/pull/1764
- Skipped specs for deprecated Spending Proposal model https://github.com/consul/consul/pull/1773
- Moved Documentation to https://github.com/consul/docs https://github.com/consul/consul/pull/1861
- Remove Poll Officer recounts, add Final & Totals votes https://github.com/consul/consul/pull/1919
- Remove deprecated Poll results models https://github.com/consul/consul/pull/1964
- Remove deprecated Poll::Question valid_answers attribute & usage https://github.com/consul/consul/pull/2073 https://github.com/consul/consul/pull/2074

### Fixed
- Foundation settings stylesheet https://github.com/consul/consul/pull/1766
- Budget milestone date localization https://github.com/consul/consul/pull/1734
- Return datetime format for en locale https://github.com/consul/consul/pull/1795
- Show bottom proposals button only if proposals exists https://github.com/consul/consul/pull/1798
- Check SMS verification in a more consistent way https://github.com/consul/consul/pull/1832
- Allow only YouTube/Vimeo URLs on 'video_url' attributes https://github.com/consul/consul/pull/1854
- Remove empty comments html https://github.com/consul/consul/pull/1862
- Fixed admin/poll routing errors https://github.com/consul/consul/pull/1863
- Display datepicker arrows https://github.com/consul/consul/pull/1869
- Validate presence poll presence on Poll::Question creation https://github.com/consul/consul/pull/1868
- Switch flag/unflag buttons on use via ajax https://github.com/consul/consul/pull/1883
- Flaky specs fixed https://github.com/consul/consul/pull/1888
- Fixed link back from moderation dashboard to root_path https://github.com/consul/consul/pull/2132
- Fixed Budget random pagination order https://github.com/consul/consul/pull/2131
- Fixed `direct_messages_max_per_day` set to nil https://github.com/consul/consul/pull/2100
- Fixed notification link error when someone commented a Topic https://github.com/consul/consul/pull/2094
- Lots of small UI/UX/SEO/SEM improvements

## [0.10.0](https://github.com/consul/consul/compare/v0.9...v0.10) - 2017-07-05
### Added
- Milestones on Budget Investment's
- Feature flag to enable/disable Legislative Processes
- Locale site pages customization
- Incompatible investments

### Changed
- Localization files reorganization. Check migration instruction at https://github.com/consul/consul/releases/tag/v0.10
- Rails 4.2.9

## [0.9.0](https://github.com/consul/consul/compare/v0.8...v0.9) - 2017-06-15
### Added
- Budgets
- Basic polls
- Collaborative legistlation
- Custom pages
- GraphQL API
- Improved admin section

### Changed
- Improved admin section
- Rails 4.2.8
- Ruby 2.3.2

### Deprecated
- SpendingProposals are deprecated now in favor of Budgets

### Fixed
- CKEditor locale compilation fixed
- Fixed bugs in mobile layouts

## [0.8.0](https://github.com/consul/consul/compare/v0.7...v0.8)- 2016-07-21
### Added
- Support for customization schema, vía specific custom files, assets and folders

### Changed
- Rails 4.2.7
- Ruby 2.3.1

### Fixed
- Fixed bug causing errors on user deletion

## [0.7.0] - 2016-04-25
### Added
- Debates
- Proposals
- Basic Spending Proposals

### Changed
- Rails 4.2.6
- Ruby 2.2.3

[Unreleased]: https://github.com/consul/consul/compare/v0.18...consul:master
[0.18.0]: https://github.com/consul/consul/compare/v0.17...v.018
[0.17.0]: https://github.com/consul/consul/compare/v0.16...v.017
[0.16.0]: https://github.com/consul/consul/compare/v0.15...v.016
[0.15.0]: https://github.com/consul/consul/compare/v0.14...v0.15
[0.14.0]: https://github.com/consul/consul/compare/v0.13...v0.14
[0.13.0]: https://github.com/consul/consul/compare/v0.12...v0.13
[0.12.0]: https://github.com/consul/consul/compare/v0.11...v0.12
[0.11.0]: https://github.com/consul/consul/compare/v0.10...v0.11
[0.10.0]: https://github.com/consul/consul/compare/v0.9...v0.10
[0.9.0]: https://github.com/consul/consul/compare/v0.8...v0.9
[0.8.0]: https://github.com/consul/consul/compare/v0.7...v0.8
