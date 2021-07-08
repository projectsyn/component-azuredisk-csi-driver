local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.azuredisk_csi_driver;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('azuredisk-csi-driver', params.namespace);

{
  'azuredisk-csi-driver': app,
}
