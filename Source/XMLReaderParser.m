//
//  XMLReaderParser.m
//  RestKit
//
//  Created by GREGORY GENTLING on 7/27/11.
//  Copyright 2011 Two Toasters. All rights reserved.
//

#import "XMLReaderParser.h"
#import "XMLReader.h"
#import "NSStack.h"


@implementation XMLReaderParser


- (NSDictionary*)objectFromString:(NSString*)string error:(NSError **)error {
	NSDictionary *xmlDictionary = [[XMLReader dictionaryForXMLString:string error:error] retain];
	
	return xmlDictionary;
	
	//** 9.3 fixed empty result issue...
	//return [xmlDictionary count] > 0 ? xmlDictionary : nil;
}


- (NSString*)stringFromObject:(id)object error:(NSError **)error {
	
	/*--------------------------------------------------------------
	 * object is in dictionary format already...
	 *-------------------------------------------------------------*/
	NSString* xml = [object newXMLString];

	return xml;
}


@end
