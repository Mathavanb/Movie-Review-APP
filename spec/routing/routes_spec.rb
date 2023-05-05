require 'rails_helper'

RSpec.describe 'Routes', type: :routing do
  describe 'HomepgsController routing' do
    it 'routes to #index' do
      expect(get: '/').to route_to('homepgs#index')
    end

    it 'routes to #show' do
      expect(get: '/homepgs/1').to route_to('homepgs#show', id: '1')
    end

    it 'routes to #new' do
      expect(get: '/homepgs/new').to route_to('homepgs#new')
    end

    it 'routes to #edit' do
      expect(get: '/homepgs/1/edit').to route_to('homepgs#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/homepgs').to route_to('homepgs#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/homepgs/1').to route_to('homepgs#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/homepgs/1').to route_to('homepgs#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/homepgs/1').to route_to('homepgs#destroy', id: '1')
    end

    it 'routes to #reviewpgs' do
      expect(get: '/homepgs/1/reviewpgs').to route_to('reviewpgs#index', homepg_id: '1')
    end

    it 'routes to #new_reviewpg' do
      expect(get: '/homepgs/1/reviewpgs/new').to route_to('reviewpgs#new', homepg_id: '1')
    end

    it 'routes to #edit_reviewpg' do
      expect(get: '/homepgs/1/reviewpgs/1/edit').to route_to('reviewpgs#edit', homepg_id: '1', id: '1')
    end

    it 'routes to #create_reviewpg' do
      expect(post: '/homepgs/1/reviewpgs').to route_to('reviewpgs#create', homepg_id: '1')
    end

    it 'routes to #update_reviewpg via PUT' do
      expect(put: '/homepgs/1/reviewpgs/1').to route_to('reviewpgs#update', homepg_id: '1', id: '1')
    end

    it 'routes to #update_reviewpg via PATCH' do
      expect(patch: '/homepgs/1/reviewpgs/1').to route_to('reviewpgs#update', homepg_id: '1', id: '1')
    end

    it 'routes to #destroy_reviewpg' do
      expect(delete: '/homepgs/1/reviewpgs/1').to route_to('reviewpgs#destroy', homepg_id: '1', id: '1')
    end
  end

  describe 'Root path routing' do
    it 'routes to homepgs#index' do
      expect(get: '/').to route_to('homepgs#index')
    end
  end

  describe 'Devise routes' do
    it 'routes to users/sessions#create' do
      expect(post: '/users/sign_in').to route_to('users/sessions#create')
    end

    it 'routes to users/sessions#destroy' do
      expect(delete: '/users/sign_out').to route_to('users/sessions#destroy')
    end

    it 'routes to users/passwords#edit' do
      expect(get: '/users/password/edit').to route_to('devise/passwords#edit')
    end

    it 'routes to users/registrations#cancel' do
      expect(get: '/users/cancel').to route_to('users/registrations#cancel')
    end

    it 'routes to users/registrations#create' do
      expect(post: '/users').to route_to('users/registrations#create')
    end

    it 'routes to users/registrations#new' do
      expect(get: '/users/sign_up').to route_to('users/registrations#new')
    end

    it 'routes to users/registrations#edit' do
      expect(get: '/users/edit').to route_to('users/registrations#edit')
    end

    it 'routes to users/registrations#update' do
      expect(put: '/users').to route_to('users/registrations#update')
    end

  end
end
