class SessionsController < ApplicationController
    def new
      # Affiche le formulaire de connexion
      render json: { message: 'New Successfully' }
    end
  
    def create
      # Traite la soumission du formulaire de connexion
      # Vérifiez les informations d'identification et créez une session utilisateur
      render json: { message: 'Create successfuly' }
    end
  
    def destroy
      # Déconnecte l'utilisateur (détruit la session)
      render json: { message: 'No content' }
    end
end
  