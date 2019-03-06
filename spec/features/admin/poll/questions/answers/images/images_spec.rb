require 'rails_helper'

feature 'Images' do

  background do
    admin = create(:administrator)
    login_as(admin.user)
  end

  context 'Index' do
    scenario 'Answer with no images' do
      answer = create(:poll_question_answer,
                      question: create(:poll_question))

      visit admin_answer_images_path(answer)

      expect(page).not_to have_css("img[title='']")
    end

    scenario 'Answer with images' do
      answer = create(:poll_question_answer,
                      question: create(:poll_question))
      image = create(:image, imageable: answer)

      visit admin_answer_images_path(answer)

      expect(page).to have_css("img[title='#{image.title}']")
      expect(page).to have_content(image.title)
    end
  end

  scenario 'Add image to answer', :js do
    answer = create(:poll_question_answer,
                    question: create(:poll_question))
    image = create(:image)

    visit admin_answer_images_path(answer)
    expect(page).not_to have_css("img[title='clippy.jpg']")
    expect(page).not_to have_content('clippy.jpg')

    visit new_admin_answer_image_path(answer)
    imageable_attach_new_file(image, Rails.root.join('spec/fixtures/files/clippy.jpg'))
    click_button 'Save image'

    expect(page).to have_css("img[title='clippy.jpg']")
    expect(page).to have_content('clippy.jpg')
  end

  scenario 'Remove image from answer', :js do
    answer = create(:poll_question_answer,
                    question: create(:poll_question))
    image = create(:image, imageable: answer)

    visit admin_answer_images_path(answer)
    expect(page).to have_css("img[title='#{image.title}']")
    expect(page).to have_content(image.title)

    accept_confirm 'Are you sure?' do
      click_link 'Remove image'
    end

    expect(page).not_to have_css("img[title='#{image.title}']")
    expect(page).not_to have_content(image.title)
  end

end
