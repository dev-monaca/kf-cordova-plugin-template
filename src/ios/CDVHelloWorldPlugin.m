//
//  CDVHelloWorldPlugin.m
//
//  Created by Asial Corporation.
//  Copyright (c) 2022 Asial Corporation. All rights reserved.
//

#import <Cordova/CDV.h>
#import "CDVHelloWorldPlugin.h"

/// class name:(8)iOSNativeClass
@interface CDVHelloWorldPlugin ()

/// callback ID
/// Used to return values ​​to plugins
@property NSString *callbackId;

@end

/// Hello world plugin
/// class name:(8)iOSNativeClass
@implementation CDVHelloWorldPlugin

/// plugin action method
/// method name:(7)NativeAction
/// @param command
- (void)hello:(CDVInvokedUrlCommand*)command
{
    self.callbackId = command.callbackId;
    [self sendPluginResultWithValue:@"Hello World!!"];

    // If the plugin will take much time for processing,
    // execute it in background.
    // [self.commandDelegate runInBackground:^{
    //    [self sendPluginResultWithValue:@"Hello World!!"];
    // }];
}

/// return value to plugin
/// @param (NSDictionary *)result  return value
- (void)sendPluginResultWithValue: (NSString *)result {
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:result];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
}

/// return error to plugin
- (void)sendPluginResultWithError {
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Error!!"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackId];
}

@end
