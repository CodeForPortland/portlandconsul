require 'rails_helper'
require 'sessions_helper'

feature 'Legislation Proposals' do

  let(:user)     { create(:user) }
  let(:user2)    { create(:user) }
  let(:process)  { create(:legislation_process) }
  let(:proposal) { create(:legislation_proposal) }

  context "Concerns" do
    it_behaves_like 'notifiable in-app', Legislation::Proposal
  end

  scenario "Only one menu element has 'active' CSS selector" do
    visit legislation_process_proposal_path(proposal.process, proposal)

    within('#navigation_bar') do
      expect(page).to have_css('.is-active', count: 1)
    end
  end

  feature "Random pagination" do
    before do
      allow(Legislation::Proposal).to receive(:default_per_page).and_return(12)

      create_list(
        :legislation_proposal,
        (Legislation::Proposal.default_per_page + 2),
        process: process
      )
    end

    scenario "Each user has a different and consistent random proposals order", :js do
      in_browser(:one) do
        login_as user
        visit legislation_process_proposals_path(process)
        @first_user_proposals_order = legislation_proposals_order
      end

      in_browser(:two) do
        login_as user2
        visit legislation_process_proposals_path(process)
        @second_user_proposals_order = legislation_proposals_order
      end

      expect(@first_user_proposals_order).not_to eq(@second_user_proposals_order)

      in_browser(:one) do
        visit legislation_process_proposals_path(process)
        expect(legislation_proposals_order).to eq(@first_user_proposals_order)
      end

      in_browser(:two) do
        visit legislation_process_proposals_path(process)
        expect(legislation_proposals_order).to eq(@second_user_proposals_order)
      end
    end

    scenario "Random order maintained with pagination", :js do
      login_as user
      visit legislation_process_proposals_path(process)
      first_page_proposals_order = legislation_proposals_order

      click_link "Next"

      expect(page).to have_content "You're on page 2"
      expect(first_page_proposals_order & legislation_proposals_order).to eq([])

      click_link "Previous"

      expect(page).to have_content "You're on page 1"
      expect(legislation_proposals_order).to eq(first_page_proposals_order)
    end

    scenario "Does not crash when the seed is not a number" do
      login_as user
      visit legislation_process_proposals_path(process, random_seed: "Spoof")

      expect(page).to have_content "You're on page 1"
    end
  end

  context 'Selected filter' do
    scenario 'apperars even if there are not any selected poposals' do
      create(:legislation_proposal, legislation_process_id: process.id)

      visit legislation_process_proposals_path(process)

      expect(page).to have_content('Selected')
    end

    scenario 'defaults to winners if there are selected proposals' do
      create(:legislation_proposal, legislation_process_id: process.id)
      create(:legislation_proposal, legislation_process_id: process.id, selected: true)

      visit legislation_process_proposals_path(process)

      expect(page).to have_link('Random')
      expect(page).not_to have_link('Selected')
      expect(page).to have_content('Selected')
    end

    scenario 'defaults to random if the current process does not have selected proposals' do
      create(:legislation_proposal, legislation_process_id: process.id)
      create(:legislation_proposal, selected: true)

      visit legislation_process_proposals_path(process)

      expect(page).to have_link('Selected')
      expect(page).not_to have_link('Random')
      expect(page).to have_content('Random')
    end

    scenario 'filters correctly' do
      proposal1 = create(:legislation_proposal, legislation_process_id: process.id)
      proposal2 = create(:legislation_proposal, legislation_process_id: process.id, selected: true)

      visit legislation_process_proposals_path(process, filter: "random")
      click_link 'Selected'

      expect(page).to have_css("div#legislation_proposal_#{proposal2.id}")
      expect(page).not_to have_css("div#legislation_proposal_#{proposal1.id}")
    end
  end

  def legislation_proposals_order
    all("[id^='legislation_proposal_']").collect { |e| e[:id] }
  end

  scenario "Create a legislation proposal with an image", :js do
    create(:legislation_proposal, process: process)

    login_as user

    visit new_legislation_process_proposal_path(process)

    fill_in 'Proposal title', with: 'Legislation proposal with image'
    fill_in 'Proposal summary', with: 'Including an image on a legislation proposal'
    imageable_attach_new_file(create(:image), Rails.root.join('spec/fixtures/files/clippy.jpg'))
    check 'legislation_proposal_terms_of_service'
    click_button 'Create proposal'

    expect(page).to have_content 'Legislation proposal with image'
    expect(page).to have_content 'Including an image on a legislation proposal'
    expect(page).to have_css("img[alt='#{Legislation::Proposal.last.image.title}']")
  end
end
