#include "include/viacep_exercicio1/viacep_exercicio1_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "viacep_exercicio1_plugin.h"

void ViacepExercicio1PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  viacep_exercicio1::ViacepExercicio1Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
