package com.xenix.audio.recorder.engine;

import com.getcapacitor.Logger;

public class RecorderEngine {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
