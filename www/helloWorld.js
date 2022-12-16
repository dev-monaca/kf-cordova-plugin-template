let HelloWorld = function () {};

HelloWorld.prototype.hello = function(success, fail) {
  // (6)NativeService
  const nativeService = "HelloWorldPlugin";
  // (7)NativeAction
  const nativeAction = "hello";
  cordova.exec(success, fail, nativeService, nativeAction, []);
};

let helloWorld = new HelloWorld();
// (4)JSInterface
module.exports = helloWorld;