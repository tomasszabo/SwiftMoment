Pod::Spec.new do |s|

  s.name         = "SwiftMoment"
  s.version      = "0.7"
  s.summary      = "A time and calendar manipulation library for iOS / macOS / tvOS / watchOS written in Swift"
  s.description  = <<-DESC
                    This framework is inspired by Moment.js. Its objectives are the following:

                    * Simplify the manipulation and readability of date and interval values.
                    * Provide help when parsing dates from various string representations.
                    * Simplifying the formatting of date information into strings.
                    * Streamlining getting date components (day, month, etc.) from dates and time intervals.

                    This fork supports Swift 6, iOS/tvOS 15+, macOS 12+ and watchOS 9+.
                   DESC
  s.homepage     = "http://akosma.github.io/SwiftMoment/"
  s.license      = { :type => "BSD", :file => "LICENSE" }
  s.author             = { "Adrian Kosmaczewski" => "akosma@me.com" }
  s.social_media_url   = "http://twitter.com/akosma"
  s.swift_version = "6.0"
  s.ios.deployment_target = "15.0"
  s.osx.deployment_target = "12.0"
  s.tvos.deployment_target = "15.0"
  s.watchos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/tomasszabo/SwiftMoment.git", :branch => "master" }
  s.source_files  = "SwiftMoment/SwiftMoment"
  s.resource     = "SwiftMoment/SwiftMoment/MomentFromNow.bundle"
end
