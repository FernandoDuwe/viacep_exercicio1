//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <viacep_exercicio1/viacep_exercicio1_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) viacep_exercicio1_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ViacepExercicio1Plugin");
  viacep_exercicio1_plugin_register_with_registrar(viacep_exercicio1_registrar);
}
