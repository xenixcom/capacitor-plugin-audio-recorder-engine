package com.xenix.audio.recorder.engine;

import com.getcapacitor.Logger;

public class RecorderEngine {

    public String echo(String value) {
        String result = value + " from Android";
        Logger.info("Echo:", value);
        return result;
    }
}
