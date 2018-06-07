/*
 * Copyright (c) 2018, salesforce.com, inc.
 * All rights reserved.
 * Licensed under the BSD 3-Clause license.
 * For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
 */

 /**
 * Churn jasmine test spec file.
 *
 */

describe("getRESTData component testing", function(){
    afterEach(function() {
        // Each spec (test) renders its components into the same div,
        // so we need to clear that div out at the end of each spec.
        $T.clearRenderedTestComponents();
    });

    describe("local action", function() {
        beforeEach(function(done) {
            var that = this;
            $T.createComponent("c:getRESTData", { customerId:46 }, true).then(function(component) {
                that.component = component;
                var cancelToken = {
                    requested : false,
                    promise : new Promise(function(resolve, reject) {
                    })
                };
                $T.run(function() {
                    that.result = component.invoke(cancelToken);
                    that.result.then(function() {
                        done();
                    }, function() {
                        done();
                    });
                });
            });
        });
        it("should not raise an error", function(done) {
            this.result.then(function() {
                done();
            }, function(reason) {
                done.fail("Error occured while calling the local action "+reason);
            });
        });
        it("output should be 0.85", function() {
            expect(this.component.get("v.churnVal")).toBe(0.85);
        });
    });

});
