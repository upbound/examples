
import models.io.upbound.dev.meta.v1alpha1 as metav1alpha1


_items = [
    metav1alpha1.CompositionTest{
        metadata.name: "test-approval-received"
        spec= {
            assertResources: [
                {
                    apiVersion: "nop.crossplane.io/v1alpha1"
                    kind: "NopResource"
                    metadata.name: "firewall"
                }
            ]
            compositionPath: "apis/firewallrules/composition.yaml"
            xrPath: "examples/firewallrule/example-approved.yaml"
            xrdPath: "apis/firewallrules/definition.yaml"
            timeoutSeconds: 60
            validate: False
        }
    },
]
items= _items