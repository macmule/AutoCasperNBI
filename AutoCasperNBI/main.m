//
//  main.m
//  AutoCasperNBI
//
//  Created by Ben Toms on 04/06/2014.
//  Copyright (c) 2014 macmule. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[])
{
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
