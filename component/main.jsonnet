// main template for azuredisk-csi-driver
local kap = import 'lib/kapitan.libjsonnet';
local kube = import 'lib/kube.libjsonnet';
local inv = kap.inventory();
// The hiera parameters for the component
local params = inv.parameters.azuredisk_csi_driver;

// Define outputs below
{
  '00_namespace': kube.Namespace(params.namespace),
}
