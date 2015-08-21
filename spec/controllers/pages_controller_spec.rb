require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe "GET #home" do

    before(:each) { get :home }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'renders home view' do
      expect(response).to render_template :home
    end

    it 'has correct H1 tag' do
      h1_text = 'Simple App'
      expect(response.body).to have_selector('h1', text: h1_text)
    end

    it "devrait avoir le bon titre" do
      title_text = 'Simple App du Tutoriel Ruby on Rails | Accueil'
      expect(response.body).to have_selector("title", text: title_text, visible: false)
    end

  end

  describe "GET #contact" do

    before(:each) { get :contact }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'renders home view' do
      expect(response).to render_template :contact
    end

    it 'has correct H1 tag' do
      h1_text = 'Contact'
      expect(response.body).to have_selector('h1', text: h1_text)
    end

    it "devrait avoir le bon titre" do
      title_text = 'Simple App du Tutoriel Ruby on Rails | Contact'
      expect(response.body).to have_selector("title", text: title_text, visible: false)
    end
  end

  describe "GET #about" do

    before(:each) { get :about }

    it "returns hhtp success" do
      expect(response).to have_http_status(:success)
    end

    it 'renders home view' do
      expect(response).to render_template :about
    end

    it 'has correct H1 tag' do
      h1_text = 'À Propos de nous'
      expect(response.body).to have_selector('h1', text: h1_text)
    end

    it "devrait avoir le bon titre" do
      title_text = 'Simple App du Tutoriel Ruby on Rails | À propos'
      expect(response.body).to have_selector("title", text: title_text, visible: false)
    end
  end

end
