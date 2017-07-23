require "../helper"

describe Twitter::User do
  describe ".from_json" do
    it "parses all attributes correctly" do
      json = File.read("./spec/fixtures/user.json")
      user = Twitter::User.from_json(json)
      user.contributors_enabled.should eq(false)
      user.created_at.should eq(Time.parse("Tue Jun 27 22:49:34 +0000 2017", "%a %b %d %T +0000 %Y"))
      user.default_profile.should eq(false)
      user.default_profile_image.should eq(false)
      user.favourites_count.should eq(50)
      user.follow_request_sent.should eq(false)
      user.followers_count.should eq(5)
      user.following.should eq(false)
      user.friends_count.should eq(119)
      user.geo_enabled.should eq(false)
      user.id.should eq(879834115100561400)
      user.is_translation_enabled.should eq(false)
      user.is_translator.should eq(false)
      user.lang.should eq("es")
      user.listed_count.should eq(0)
      user.location.should eq("")
      user.name.should eq("Hazelnut0x9999B")
      user.notifications.should eq(false)
      user.profile_background_color.should eq("000000")
      user.profile_background_image_url.should eq("http://abs.twimg.com/images/themes/theme1/bg.png")
      user.profile_background_image_url_https.should eq("https://abs.twimg.com/images/themes/theme1/bg.png")
      user.profile_background_tile.should eq(false)
      user.profile_banner_url.should eq("https://pbs.twimg.com/profile_banners/879834115100561410/1498605711")
      user.profile_image_url.should eq("http://pbs.twimg.com/profile_images/886808753470926848/rkeT7lcJ_normal.jpg")
      user.profile_image_url_https.should eq("https://pbs.twimg.com/profile_images/886808753470926848/rkeT7lcJ_normal.jpg")
      user.profile_link_color.should eq("ABB8C2")
      user.profile_location.should eq(nil)
      user.profile_sidebar_border_color.should eq("000000")
      user.profile_sidebar_fill_color.should eq("000000")
      user.profile_text_color.should eq("000000")
      user.profile_use_background_image.should eq(false)
      user.protected.should eq(false)
      user.screen_name.should eq("0xHazelnut")
      user.statuses_count.should eq(50)
      user.time_zone.should eq("Pacific Time (US & Canada)")
      user.url.should be_nil
      user.utc_offset.should eq(-25200)
      user.verified.should eq(false)
    end
  end
end
