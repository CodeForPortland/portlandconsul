require 'rails_helper'

feature 'Admin debates' do

  scenario 'Disabled with a feature flag' do
    Setting['feature.debates'] = nil
    admin = create(:administrator)
    login_as(admin.user)

    expect{ visit admin_debates_path }.to raise_exception(FeatureFlags::FeatureDisabled)

    Setting['feature.debates'] = true
  end

  background do
    admin = create(:administrator)
    login_as(admin.user)
  end

  scenario 'Restore' do
    debate = create(:debate, :hidden)
    visit admin_debates_path

    click_link 'Restore'

    expect(page).not_to have_content(debate.title)

    expect(debate.reload).not_to be_hidden
    expect(debate).to be_ignored_flag
  end

  scenario 'Confirm hide' do
    debate = create(:debate, :hidden)
    visit admin_debates_path

    click_link 'Confirm moderation'

    expect(page).not_to have_content(debate.title)
    click_link('Confirmed')
    expect(page).to have_content(debate.title)

    expect(debate.reload).to be_confirmed_hide
  end

  scenario "Current filter is properly highlighted" do
    visit admin_debates_path
    expect(page).not_to have_link('Pending')
    expect(page).to have_link('All')
    expect(page).to have_link('Confirmed')

    visit admin_debates_path(filter: 'Pending')
    expect(page).not_to have_link('Pending')
    expect(page).to have_link('All')
    expect(page).to have_link('Confirmed')

    visit admin_debates_path(filter: 'all')
    expect(page).to have_link('Pending')
    expect(page).not_to have_link('All')
    expect(page).to have_link('Confirmed')

    visit admin_debates_path(filter: 'with_confirmed_hide')
    expect(page).to have_link('All')
    expect(page).to have_link('Pending')
    expect(page).not_to have_link('Confirmed')
  end

  scenario "Filtering debates" do
    create(:debate, :hidden, title: "Unconfirmed debate")
    create(:debate, :hidden, :with_confirmed_hide, title: "Confirmed debate")

    visit admin_debates_path(filter: 'pending')
    expect(page).to have_content('Unconfirmed debate')
    expect(page).not_to have_content('Confirmed debate')

    visit admin_debates_path(filter: 'all')
    expect(page).to have_content('Unconfirmed debate')
    expect(page).to have_content('Confirmed debate')

    visit admin_debates_path(filter: 'with_confirmed_hide')
    expect(page).not_to have_content('Unconfirmed debate')
    expect(page).to have_content('Confirmed debate')
  end

  scenario "Action links remember the pagination setting and the filter" do
    per_page = Kaminari.config.default_per_page
    (per_page + 2).times { create(:debate, :hidden, :with_confirmed_hide) }

    visit admin_debates_path(filter: 'with_confirmed_hide', page: 2)

    click_on('Restore', match: :first, exact: true)

    expect(current_url).to include('filter=with_confirmed_hide')
    expect(current_url).to include('page=2')
  end

end
