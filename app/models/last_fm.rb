require 'delegate'

module LastFm
  extend self

  delegate :user, :track, :to => :instance

  private

  def instance
    @instance ||= Lastfm.new(Figaro.env.lastfm_app_key, Figaro.env.lastfm_secret)
  end
end
