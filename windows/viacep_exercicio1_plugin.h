#ifndef FLUTTER_PLUGIN_VIACEP_EXERCICIO1_PLUGIN_H_
#define FLUTTER_PLUGIN_VIACEP_EXERCICIO1_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace viacep_exercicio1 {

class ViacepExercicio1Plugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ViacepExercicio1Plugin();

  virtual ~ViacepExercicio1Plugin();

  // Disallow copy and assign.
  ViacepExercicio1Plugin(const ViacepExercicio1Plugin&) = delete;
  ViacepExercicio1Plugin& operator=(const ViacepExercicio1Plugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace viacep_exercicio1

#endif  // FLUTTER_PLUGIN_VIACEP_EXERCICIO1_PLUGIN_H_
