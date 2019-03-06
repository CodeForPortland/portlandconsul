require 'rails_helper'

feature 'Admin comments' do

  background do
    admin = create(:administrator)
    login_as(admin.user)
  end

  scenario "Do not show comments from blocked users" do
    comment = create(:comment, :hidden, body: "SPAM from SPAMMER")
    proposal = create(:proposal, author: comment.author)
    create(:comment, commentable: proposal, user: comment.author, body: "Good Proposal!")

    visit admin_comments_path
    expect(page).to have_content("SPAM from SPAMMER")
    expect(page).not_to have_content("Good Proposal!")

    visit proposal_path(proposal)
    within("#proposal_#{proposal.id}") do
      click_link 'Hide author'
    end

    visit admin_comments_path
    expect(page).not_to have_content("SPAM from SPAMMER")
    expect(page).not_to have_content("Good Proposal!")
  end

  scenario "Visit items with hidden comments" do
    debate = create(:debate, title: "Debate with spam comment")
    proposal = create(:proposal, title: "Proposal with spam comment")
    create(:comment, :hidden, commentable: debate, body: "This is SPAM comment on debate")
    create(:comment, :hidden, commentable: proposal, body: "This is SPAM comment on proposal")

    visit admin_comments_path

    expect(page).to have_content("Debate with spam comment")
    expect(page).to have_content("Proposal with spam comment")
    expect(page).to have_content("This is SPAM comment on debate")
    expect(page).to have_content("This is SPAM comment on proposal")

    click_link "Debate with spam comment"
    expect(page).to have_content("Debate with spam comment")
    expect(page).not_to have_content("This is SPAM comment on debate")

    visit admin_comments_path

    click_link "Proposal with spam comment"
    expect(page).to have_content("Proposal with spam comment")
    expect(page).not_to have_content("This is SPAM comment on proposal")
  end

  scenario "Don't show link on hidden items" do
    debate = create(:debate, :hidden, title: "Hidden debate title")
    proposal = create(:proposal, :hidden, title: "Hidden proposal title")
    create(:comment, :hidden, commentable: debate, body: "This is SPAM comment on debate")
    create(:comment, :hidden, commentable: proposal, body: "This is SPAM comment on proposal")

    visit admin_comments_path

    expect(page).to have_content("(Hidden proposal: Hidden proposal title)")
    expect(page).to have_content("(Hidden debate: Hidden debate title)")

    expect(page).not_to have_link("This is SPAM comment on debate")
    expect(page).not_to have_link("This is SPAM comment on proposal")
  end

  scenario "Restore" do
    comment = create(:comment, :hidden, body: 'Not really SPAM')
    visit admin_comments_path

    click_link 'Restore'

    expect(page).not_to have_content(comment.body)

    expect(comment.reload).not_to be_hidden
    expect(comment).to be_ignored_flag
  end

  scenario "Confirm hide" do
    comment = create(:comment, :hidden, body: 'SPAM')
    visit admin_comments_path

    click_link 'Confirm moderation'

    expect(page).not_to have_content(comment.body)
    click_link('Confirmed')
    expect(page).to have_content(comment.body)

    expect(comment.reload).to be_confirmed_hide
  end

  scenario "Current filter is properly highlighted" do
    visit admin_comments_path
    expect(page).not_to have_link('Pending')
    expect(page).to have_link('All')
    expect(page).to have_link('Confirmed')

    visit admin_comments_path(filter: 'Pending')
    expect(page).not_to have_link('Pending')
    expect(page).to have_link('All')
    expect(page).to have_link('Confirmed')

    visit admin_comments_path(filter: 'all')
    expect(page).to have_link('Pending')
    expect(page).not_to have_link('All')
    expect(page).to have_link('Confirmed')

    visit admin_comments_path(filter: 'with_confirmed_hide')
    expect(page).to have_link('Pending')
    expect(page).to have_link('All')
    expect(page).not_to have_link('Confirmed')
  end

  scenario "Filtering comments" do
    create(:comment, :hidden, body: "Unconfirmed comment")
    create(:comment, :hidden, :with_confirmed_hide, body: "Confirmed comment")

    visit admin_comments_path(filter: 'all')
    expect(page).to have_content('Unconfirmed comment')
    expect(page).to have_content('Confirmed comment')

    visit admin_comments_path(filter: 'with_confirmed_hide')
    expect(page).not_to have_content('Unconfirmed comment')
    expect(page).to have_content('Confirmed comment')
  end

  scenario "Action links remember the pagination setting and the filter" do
    per_page = Kaminari.config.default_per_page
    (per_page + 2).times { create(:comment, :hidden, :with_confirmed_hide) }

    visit admin_comments_path(filter: 'with_confirmed_hide', page: 2)

    click_on('Restore', match: :first, exact: true)

    expect(current_url).to include('filter=with_confirmed_hide')
    expect(current_url).to include('page=2')
  end

end