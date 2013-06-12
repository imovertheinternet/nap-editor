  # app/models/only_authors_authorization.rb
  class OnlyAuthorsAuthorization < ActiveAdmin::AuthorizationAdapter

      def authorized?(action, subject = nil)
        case subject
        when normalize(Post)

          # Only let the author update and delete posts
          if action == :update || action == :destroy
            subject.author == user

          # If it's not an update or destroy, anyone can view it
          else
            true
          end

        else
          true
        end
      end

  end
