import { WebPlugin } from '@capacitor/core';

import type { RecorderEnginePlugin } from './definitions';

export class RecorderEngineWeb extends WebPlugin implements RecorderEnginePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    const result = `${options.value} from Web`;
    console.log('Echo:', result);
    return {value: result};
  }
}
