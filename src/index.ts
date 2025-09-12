import { registerPlugin } from '@capacitor/core';

import type { RecorderEnginePlugin } from './definitions';

const RecorderEngine = registerPlugin<RecorderEnginePlugin>('RecorderEngine', {
  web: () => import('./web').then((m) => new m.RecorderEngineWeb()),
});

export * from './definitions';
export { RecorderEngine };
