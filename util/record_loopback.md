pw-cli list-objects | grep node.name
ffmpeg -f pulse -i <node.name>.monitor output.mp3
ffmpeg -f pulse -i <node.name>.monitor -t 00:05:00 output.mp3
press `q` to stop/finalize recording
https://mynoise.net/NoiseMachines/babbleNoiseGenerator.php

set sample rate with `-ar` option, must come before the input (-i) so it applies to the PulseAudio capture, not just the output:
`ffmpeg -f pulse -ar 48000 -i <node.name>.monitor output.wav`

If you only put -ar after -i, ffmpeg will let PulseAudio capture at its default rate and then resample on the way to the file.
You can also set channels with -ac 2 (also before -i), e.g. ffmpeg -f pulse -ac 2 -ar 48000 -i <node.name>.monitor output.wav.
If you want a specific output format regardless of the captured rate, add -ar again after -i for the output, e.g. ffmpeg -f pulse -ar 48000 -i foo.monitor -ar 44100 output.wav.


created: 2026d29-2110
