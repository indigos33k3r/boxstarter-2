# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#    Common tools
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if(Confirm-Install 'Boxstarter::DevAndroid::jdk8')          { Install-ChocoApp jdk8 }
if(Confirm-Install 'Boxstarter::DevAndroid::gradle')        { Install-ChocoApp gradle }
if(Confirm-Install 'Boxstarter::DevAndroid::android-sdk')   { Install-ChocoApp android-sdk -RefreshEnv -NoUpgrade }
if(Confirm-Install 'Boxstarter::DevAndroid::androidstudio') { Install-ChocoApp androidstudio -RefreshEnv -NoUpgrade }
if(Confirm-Install 'Boxstarter::DevAndroid::apktool')       { Install-ChocoApp apktool }