export interface RecorderEnginePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
