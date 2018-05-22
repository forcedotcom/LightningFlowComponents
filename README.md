
This repository contains a collection of Lightning Components that can be used to enhance Lightning Flow from Salesforce. Note that you do not need to write code, read code, or use developer console to install these into your Flow Designer! You can install them with a few commands by using the new Salesforce DX deployment tools. (See "Installation")

# Lightning Flow Action Components
[Lightning Action Components](/flow_local_actions/) folder contains lightning components (aura classes) that have been optimized to be added to Lightning Flows as standalone actions. This mainly means that they:
1) implement the "lightning:availableForFlowActions" interface so they show up in the tools palette of Cloud Flow Designer as Local Actions that can be dragged onto the canvas and added to flows as discrete actions.
2) provide an #invoke method that allows the Flow engine to call them at the appropriate point during flow execution. The invoke method need to return a promise that is fulfilled when it is done.

Flow Action Components generally do not have a visual focus, although they have to run in Screen Flows to ensure the presence of a client-side javascript runtime.

# [A Note about SFDX](./sfdxintro.md)
