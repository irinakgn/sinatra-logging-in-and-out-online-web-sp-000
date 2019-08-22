class Helpers
  def self.current_user(session_hash)
    @user = User.find(session_hash[:user_id])
  end

<<<<<<< HEAD
  def self.is_logged_in?(session_hash)
   @res = !!session_hash[:user_id]
   @res
  end
=======
  def self.current_user(session)
     User.find(session["user_id"])
   end

    def self.is_logged_in?(session)
     !!session["user_id"]
   end

>>>>>>> 9ce6aad1c57a5d20a4ca22b3bbe1117305dd3cfe
end
