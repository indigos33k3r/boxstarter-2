# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#  Other common tools
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if(Confirm-Install 'Boxstarter::DevCore::cmake')    { Install-ChocoApp cmake }
if(Confirm-Install 'Boxstarter::DevCore::LLVM')     { Install-ChocoApp llvm }
if(Confirm-Install 'Boxstarter::DevCore::doxygen')  { Install-ChocoApp doxygen.install }
