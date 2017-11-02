require 'rails_helper'

RSpec.describe 'DmdiiProject API', type: :request do
  # initialize test data
  let!(:dmdii_projects) { create_list(:dmdii_project, 10) }
  let(:dmdii_project_id) { dmdii_projects.first.id }

  # Test suite for GET /dmdii_projects
  describe 'GET /dmdii_projects' do
    # make HTTP get request before each example
    before { get '/dmdii_projects' }

    it 'returns dmdii_projects' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json["dmdii_projects"].size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /dmdii_projects/:id
  describe 'GET /dmdii_projects/:id' do
    before { get "/dmdii_projects/#{dmdii_project_id}" }

    context 'when the record exists' do
      it 'returns the dmdii_project' do
        expect(json).not_to be_empty
        expect(json['dmdii_project']['id']).to eq(dmdii_project_id)
      end

      it 'returns the status' do
        expect(response.body).to match (/pre-awarded/)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:dmdii_project_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find DmdiiProject/)
      end
    end
  end

  # Test suite for POST /dmdii_projects
  describe 'POST /dmdii_projects' do
    # valid payload
    let(:valid_attributes) { { status_id: 1, project_title: 'A project for robots.',
      project_summary: 'The greatest project', focus_area_id: 1, thrust_id: 1,
      project_root_number: 10, project_call_number: 10, project_number: 10} }

    context 'when the request is valid' do
      before { post '/dmdii_projects', params: valid_attributes }

      it 'creates a dmdii_project' do
        expect(json['dmdii_project']['project_title']).to eq('A project for robots.')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/dmdii_projects', params: { project_title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Dmdii project/)
      end
    end
  end

  # Test suite for PUT /dmdii_projects/:id
  describe 'PUT /dmdii_projects/:id' do
    let(:valid_attributes) { { principal_point_of_contact_id: 1 } }

    context 'when the record exists' do
      before { put "/dmdii_projects/#{dmdii_project_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to match(/realname/)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  # Test suite for DELETE /dmdii_projects/:id
  describe 'DELETE /dmdii_projects/:id' do
    before { delete "/dmdii_projects/#{dmdii_project_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
