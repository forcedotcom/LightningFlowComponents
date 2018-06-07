/*
 * Copyright (c) 2018, salesforce.com, inc.
 * All rights reserved.
 * Licensed under the BSD 3-Clause license.
 * For full license text, see LICENSE.txt file in the repo root  or https://opensource.org/licenses/BSD-3-Clause
 */
({
    playSound : function(cmp, resolve, reject) {
        var audioPlayer = cmp.find("audioPlayer");
        var audioElement = audioPlayer.getElement();
        audioElement.muted = false;
        audioElement.loop = false;
        audioElement.onerror = reject;
        audioElement.onended = resolve;
        audioElement.play();
    },   
    
    toggleSound: function (cmp) {
        cmp.set("v.muted", !cmp.get("v.muted"));
    },
    
    pauseSound: function (cmp) {
        cmp.find("audioPlayer").getElement().pause();
    }
})