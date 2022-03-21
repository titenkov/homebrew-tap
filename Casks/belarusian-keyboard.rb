cask "belarusian-keyboard" do
  version :latest
  sha256 :no_check

  homepage "https://github.com/titenkov/belarusian-keyboard"
  url "https://github.com/titenkov/belarusian-keyboard/archive/main.zip"

  name "Belarusian keyboard for macOS"
  desc "Belarusian keyboard with the real white-red historical Belarusian flag"

  artifact "belarusian-keyboard-main/BelKeyboard.bundle", target: "#{ENV["HOME"]}/Library/Keyboard Layouts/BelKeyboard.bundle"

  # postflight do
  #   system "touch", "#{ENV["HOME"]}/Library/Keyboard Layouts"
  # end

  caveats <<~str 
    To use the installed keyboard, please add it in the Keyboard 
    preferences (System Preferences > Keyboard > Input Sources): 
 
      open /System/Library/PreferencePanes/Keyboard.prefPane 
     
    ** The keyboards are located in the 'Belarusian' or 'Russian' 
    sections next to the original ones. ** 

    ⬜️🟥⬜️
    Жыве вечна!
  str
end