require "json"

module Twitter
  TWEET_SOURCE = {
    :iphone     => "Twitter for iPhone",
    :android    => "Twitter for Android",
    :tweet_deck => "TweetDeck",
    :buffer     => "Buffer",
    :web_client => "Twitter Web Client",
    :gitlab     => "GitLab Cog",
  }

  class Tweet
    JSON.mapping({
      coordinates:               {type: String, nilable: true},
      created_at:                {type: Time, converter: Time::Format.new("%a %b %d %T +0000 %Y")},
      entities:                  Entities,
      favorite_count:            Int32,
      favorited:                 Bool,
      geo:                       {type: String, nilable: true},
      id:                        Int64,
      id_str:                    String,
      in_reply_to_screen_name:   {type: String, nilable: true},
      in_reply_to_status_id:     {type: Int64, nilable: true},
      in_reply_to_status_id_str: {type: String, nilable: true},
      in_reply_to_user_id:       {type: Int64, nilable: true},
      in_reply_to_user_id_str:   {type: String, nilable: true},
      lang:                      String,
      place:                     {type: String, nilable: true},
      retweet_count:             Int32,
      retweeted:                 Bool,
      retweeted_status:          {type: Tweet, nilable: true},
      source:                    String,
      text:                      String,
      truncated:                 Bool,
      user:                      {type: User, nilable: true},
    })
  end

  class Entities
    JSON.mapping({
      description:   {type: EntitiesDescription, nilable: true},
      hashtags:      Array(EntityHashtag),
      symbols:       Array(String),
      user_mentions: Array(UserMention),
      urls:          Array(EntitiesURL),
    })
  end

  class EntitiesDescription
    JSON.mapping({
      urls: {type: Array(EntitiesURL), nilable: true},
    })
  end

  class EntitiesURL
    JSON.mapping({
      url:          String,
      expanded_url: String,
      display_url:  String,
      indices:      Array(Int32),
    })
  end

  class EntityHashtag
    JSON.mapping({
      text:    String,
      indices: Array(Int32),
    })
  end

  class UserMention
    JSON.mapping({
      id:          Int64,
      id_str:      String,
      indices:     Array(Int32),
      name:        String,
      screen_name: String,
    })
  end
end
