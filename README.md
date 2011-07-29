Introduction
=========================

SSRestKitXMLParser was a quick build to get xml serialization for a near term project we are working on. 



Dependencies
-------------------------

None, just RestKit


Installation
=========================


1. Clone the SSRestKitXMLParser git repository: `git clone git://github.com/7studios/SSRestKitXMLParser.git`.  Make sure 
   you store the repository in a permanent place because Xcode will need to reference the files
   every time you compile your project.

2. Locate the "SSRestKitXMLParser.xcodeproj" file under "`SSRestKitXMLParser/Source`". Drag SSRestKitXMLParser.xcodeproj and
   drop it onto the root of your Xcode project's "Groups and Files"  sidebar.  A dialog will
   appear -- make sure "Copy items" is unchecked and "Reference Type" is "Relative to Project"
   before clicking "Add".    

3. Add the following `../SSRestKitXMLParser/Source` to your target Header Search Paths.
   
```objc

#import <SSRestKitXMLParser.h>

RKObjectManager* objectManager = [RKObjectManager objectManagerWithBaseURL:baseUrl];
objectManager.acceptMIMEType = RKMIMETypeXML;
objectManager.serializationMIMEType = RKMIMETypeXML;
[RKObjectManager setSharedManager:objectManager];
		
		
//* Associate SSRestKitXMLParser to the ParserReg
[[RKParserRegistry sharedRegistry] setParserClass:[XMLReaderParser class] forMIMEType:RKMIMETypeXML];
	
```

