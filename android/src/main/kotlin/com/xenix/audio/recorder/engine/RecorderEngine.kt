package com.xenix.audio.recorder.engine;

import com.getcapacitor.Logger;

class RecorderEngine {

    fun echo(value: String): String {
        val result = "$value from Android"
        Logger.info("Echo:", value)
        return result
    }
}
