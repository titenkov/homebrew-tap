cask "belarusian-keyboard" do
  version :latest
  sha256 :no_check

  homepage "https://github.com/titenkov/belarusian-keyboard"
  url "https://github.com/titenkov/belarusian-keyboard/archive/main.zip"

  name "Belarusian keyboard for macOS"
  desc "Belarusian keyboard with the right flag for macOS"

  artifact "belarusian-keyboard-main/be-BY.keylayout", target: "#{ENV["HOME"]}/Library/Keyboard Layouts/be-BY.keylayout"
  artifact "belarusian-keyboard-main/be-BY.icns", target: "#{ENV["HOME"]}/Library/Keyboard Layouts/be-BY.icns"

  artifact "belarusian-keyboard-main/ru-BY.keylayout", target: "#{ENV["HOME"]}/Library/Keyboard Layouts/ru-BY.keylayout"
  artifact "belarusian-keyboard-main/ru-BY.icns", target: "#{ENV["HOME"]}/Library/Keyboard Layouts/ru-BY.icns"

  # postflight do
  #   system "touch", "#{ENV["HOME"]}/Library/Keyboard Layouts"
  # end

  caveats <<~str 
    To use the installed keyboard, please add it in the 
    Keyboard preferences, on 'Input Sources' tab: 
 
      open /System/Library/PreferencePanes/Keyboard.prefPane 
     
    ** The keyboard is located in the 'Others' section. ** 
    
    ⬜️🟥⬜️
    Жыве вечна!
  str
end