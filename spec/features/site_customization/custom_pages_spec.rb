require 'rails_helper'

feature "Custom Pages" do
  context "Override existing page" do
    scenario "See default content when custom page is not published" do
      custom_page = create(:site_customization_page,
        slug: "conditions",
        title_en: "Custom conditions",
        content_en: "New text for conditions page",
        print_content_flag: true
      )

      visit custom_page.url

      expect(page).to have_title("Terms of use")
      expect(page).to have_selector("h1", text: "Terms and conditions of use")
      expect(page).to have_content("Information page on the conditions of use, privacy and protection of personal data.")
      expect(page).to have_content("Print this info")
    end

    scenario "See custom content when custom page is published" do
      custom_page = create(:site_customization_page, :published,
        slug: "conditions",
        title_en: "Custom conditions",
        content_en: "New text for conditions page",
        print_content_flag: true
      )

      visit custom_page.url

      expect(page).to have_title("Custom conditions")
      expect(page).to have_selector("h1", text: "Custom conditions")
      expect(page).to have_content("New text for conditions page")
      expect(page).to have_content("Print this info")
    end
  end

  context "New custom page" do
    context "Draft" do
      scenario "See page" do
        custom_page = create(:site_customization_page,
          slug: "other-slug",
          title_en: "Custom page",
          content_en: "Text for new custom page",
          print_content_flag: false
        )

        visit custom_page.url

        expect(page.status_code).to eq(404)
      end
    end

    context "Published" do
      scenario "See page" do
        custom_page = create(:site_customization_page, :published,
          slug: "other-slug",
          title_en: "Custom page",
          content_en: "Text for new custom page",
          print_content_flag: false
        )

        visit custom_page.url

        expect(page).to have_title("Custom page")
        expect(page).to have_selector("h1", text: "Custom page")
        expect(page).to have_content("Text for new custom page")
        expect(page).not_to have_content("Print this info")
      end

      scenario "Show all fields and text with links" do
        custom_page = create(:site_customization_page, :published,
          slug: "slug-with-all-fields-filled",
          title_en: "Custom page",
          subtitle_en: "This is my new custom page",
          content_en: "Text for new custom page with a link to https://consul.dev",
          print_content_flag: true
        )

        visit custom_page.url

        expect(page).to have_title("Custom page")
        expect(page).to have_selector("h1", text: "Custom page")
        expect(page).to have_selector("h2", text: "This is my new custom page")
        expect(page).to have_content("Text for new custom page with a link to https://consul.dev")
        expect(page).to have_link("https://consul.dev")
        expect(page).to have_content("Print this info")
      end

      scenario "Don't show subtitle if its blank" do
        custom_page = create(:site_customization_page, :published,
          slug: "slug-without-subtitle",
          title_en: "Custom page",
          subtitle_en: "",
          content_en: "Text for new custom page",
          print_content_flag: false
        )

        visit custom_page.url

        expect(page).to have_title("Custom page")
        expect(page).to have_selector("h1", text: "Custom page")
        expect(page).to have_content("Text for new custom page")
        expect(page).not_to have_selector("h2")
        expect(page).not_to have_content("Print this info")
      end

      scenario "Listed in more information page" do
        custom_page = create(:site_customization_page, :published,
          slug: "another-slug",
          title_en: "Another custom page",
          subtitle_en: "Subtitle for custom page",
          more_info_flag: true
        )

        visit help_path

        expect(page).to have_content("Another custom page")
      end

      scenario "Not listed in more information page" do
        custom_page = create(:site_customization_page, :published,
          slug: "another-slug", title_en: "Another custom page",
          subtitle_en: "Subtitle for custom page",
          more_info_flag: false
        )

        visit help_path

        expect(page).not_to have_content("Another custom page")

        visit custom_page.url

        expect(page).to have_title("Another custom page")
        expect(page).to have_selector("h1", text: "Another custom page")
        expect(page).to have_content("Subtitle for custom page")
      end
    end
  end
end
