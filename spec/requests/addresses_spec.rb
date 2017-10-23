# require 'rails_helper'
#
# RSpec.describe 'Addresses API' do
#   # Initialize the test data
#   let!(:organization) { create(:organization) }
#   let!(:address) { create(:address, organization_id: organization.id) }
#   let(:organization_id) { organization.id }
#   let(:id) { address.id }
#
#   # Test suite for GET /organizations/:organization_id/address
#   describe 'GET /organizations/:organization_id/address' do
#     before { get "/organizations/#{organization_id}/address" }
#
#     context 'when organization exists' do
#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#
#       it 'returns organization address' do
#         expect(json).not_to be_empty
#       end
#
#       it 'returns the address' do
#         expect(json['id']).to eq(id)
#       end
#     end
#
#     context 'when organization does not exist' do
#       let(:organization_id) { 0 }
#
#       it 'returns status code 404' do
#         expect(response).to have_http_status(404)
#       end
#
#       it 'returns a not found message' do
#         expect(response.body).to match(/Couldn't find Organization/)
#       end
#     end
#   end
#
#   # Test suite for POST /organizations/:organization_id/address
#   describe 'POST /organizations/:organization_id/address' do
#     let(:valid_attributes) { { street1: '123 abc street', city: 'Peoria', state: 'IL', country: 'United States', zip: '61614' } }
#
#     context 'when request attributes are valid' do
#       before { post "/organizations/#{organization_id}/address", params: valid_attributes }
#
#       it 'returns status code 201' do
#         expect(response).to have_http_status(201)
#       end
#     end
#
#     context 'when an invalid request' do
#       before { post "/organizations/#{organization_id}/address", params: {} }
#
#       it 'returns status code 422' do
#         expect(response).to have_http_status(422)
#       end
#
#       it 'returns a failure message' do
#         expect(response.body).to match(/Validation failed: Street can't be blank/)
#       end
#     end
#   end
#
#   # Test suite for PUT /organizations/:organization_id/address
#   describe 'PUT /organizations/:organization_id/address' do
#     let(:valid_attributes) { { street1: '456 abc drive' } }
#
#     before { put "/organizations/#{organization_id}/address", params: valid_attributes }
#
#     context 'when address exists' do
#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#
#       it 'updates the address' do
#         updated_address = Address.find(id)
#         expect(updated_address.street1).to match(/456 abc drive/)
#       end
#     end
#
#     context 'when the address does not exist' do
#       let(:id) { 0 }
#
#       it 'returns status code 404' do
#         expect(response).to have_http_status(404)
#       end
#
#       it 'returns a not found message' do
#         expect(response.body).to match(/Couldn't find Address/)
#       end
#     end
#   end
#
#   # Test suite for DELETE /organizations/:id
#   describe 'DELETE /organizations/:id' do
#     before { delete "/organizations/#{organization_id}/address" }
#
#     it 'returns status code 204' do
#       expect(response).to have_http_status(204)
#     end
#   end
# end
