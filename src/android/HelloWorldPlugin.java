/**
 * Copyright (c) 2022 Asial Corporation. All rights reserved.
 */

package com.example.plugin.helloworld;

import android.util.Log;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;

/**
 * Hello World Plugin Class
 * class name:(10)AndroidSNativeClass
 */
public class HelloWorldPlugin extends CordovaPlugin {
  public static final String TAG = "HelloWorldPlugin";
  public CallbackContext callbackContext;

    /**
     * ${inheritDoc}
     */
    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) {
        this.callbackContext = callbackContext;
        // (7)NativeAction
        if ("hello".equals(action)) {
            // plugin action
            sendPluginResultWithValue("Hello World!!");
        } else {
            return false;
        }
        return true;
    }

    /**
     * Send error to plugin
     * @param result return value
     */
    private void sendPluginResultWithValue(String result) {
      this.callbackContext.success(result);
  }

  /**
     * Send error to plugin
     * @param error error message
     */
    private void sendPluginResultWithError(String error) {
      Log.d(TAG, "Plugin Error: " + error);
      this.callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.ERROR, error));
  }
}
