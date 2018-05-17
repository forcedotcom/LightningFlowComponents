/*
 * Copyright (c) 2018, salesforce.com, inc.
 * All rights reserved.
 * Licensed under the BSD 3-Clause license.
 * For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
 */
 ({
    invoke : function(component, event, helper) {
        var message = component.get("v.message");
        var type = component.get("v.type");
        helper.showToast(type, message);
      }
})
