require_dependency 'repositories_controller'

module RedmineGitServer
  module Patches
    module RepositoriesControllerPatch
      def show_error_not_found
        return super if params[:action] != 'show'
        render action: 'empty'
      end
    end
  end
end

RepositoriesController.send(:prepend, RedmineGitServer::Patches::RepositoriesControllerPatch)
