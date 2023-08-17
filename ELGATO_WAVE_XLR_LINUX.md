[regression since 0.3.77: no audio inputs unless manual selection of config profile in pulse audio control](https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/3445)

similar issue with [regression since 0.3.52: no audio inputs unless manual selection of config profile ("Pro") in pulse audio control](https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/2567)

While using Linux (Fedora 38 with PipeWire), I'm encountering a problem with my Elgato Wave XLR (Elgato Wave XLR + Wave DX) microphone. Once the device is connected, it's accurately recognized, but it functions exclusively as an audio output. Unfortunately, the microphone input doesn't operate as expected. Interestingly, I've found that if I access the sound settings and switch to an alternative profile, then switch back to the Elgato profile, the microphone suddenly starts detecting audio input.

In my experience, it appears that the automated process responsible for identifying the suitable audio configuration profile for the Elgato Wave XLR might not be functioning optimally within my Fedora 38 and PipeWire setup. The workaround of manually switching profiles serves as a temporary solution to activate the microphone's input capability.

For a more comprehensive investigation, it might be beneficial to delve into the inner workings of profile detection within the PipeWire and PulseAudio subsystems. This could involve examining system logs, configuration files, and the behavior of audio profiles when the Elgato microphone is connected.

To address this issue, a potential solution would involve modifying the configuration of /usr/share/wireplumber/main.lua.d/50-alsa-config.lua. This modification would entail creating a custom matcher for your Elgato Wave XLR device and specifying customized ["device.profile"] and ["device.profile-set"] parameters. These parameters are sourced from the profiles available under /usr/share/alsa-card-profile/mixer/profile-sets/. For instance, your specific case was resolved by incorporating the force-speaker-and-int-mic.conf profile.

Here's the solution breakdown:

  - Locate the Configuration File:
    Access the `/usr/share/wireplumber/main.lua.d/50-alsa-config.lua` configuration file. This is where you will make the necessary changes to address the microphone issue.

  - Create a Custom Matcher:
    In this configuration file, set up a custom matcher that specifically targets your Elgato Wave XLR device. This matcher will help WirePlumber, the PipeWire session manager, identify and configure the device correctly.

  - Specify Custom Profiles:
    Within the custom matcher, configure the ["device.profile"] and ["device.profile-set"] parameters to point to the appropriate profile from `/usr/share/alsa-card-profile/mixer/profile-sets/`. In your case, you mentioned that the `force-speaker-and-int-mic.conf` profile resolved the issue.

By implementing these modifications, you are essentially tailoring the audio configuration to suit your Elgato Wave XLR sound card (Elgato Wave XLR + Wave DX). This should ensure that the microphone's input works as intended without requiring manual profile switching.

Keep in mind that modifying system configuration files requires administrative privileges, so make sure you're cautious while making changes. Additionally, it's always a good practice to back up any configuration files you plan to modify before proceeding.

This is the full configuration change made for `/usr/share/wireplumber/main.lua.d/50-alsa-config.lua` configuration file.

> `pactl list` to find name of the `alse_card`.

`alsa_card.usb-Elgato_Systems_Elgato_Wave_XLR_DS16M2A01804-00`

You just need to add additional matcher for Elgato

```lua
  {
    -- Rules for matching a device or node. It is an array of
    -- properties that all need to match the regexp. If any of the
    -- matches work, the actions are executed for the object.
    matches = {
      {
        -- This matches all cards.
        { "device.name", "matches", "alsa_card.usb-Elgato*" }, -- "alsa_card.*" can be valid solution to apply this configuration for all cards
      },
    },
    -- Apply properties on the matched object.
    apply_properties = {
      -- Use ALSA-Card-Profile devices. They use UCM or the profile
      -- configuration to configure the device and mixer settings.
      ["api.alsa.use-acp"] = false,

      -- Use UCM instead of profile when available. Can be
      -- disabled to skip trying to use the UCM profile.
      ["api.alsa.use-ucm"] = false,

      -- Don't use the hardware mixer for volume control. It
      -- will only use software volume. The mixer is still used
      -- to mute unused paths based on the selected port.
      ["api.alsa.soft-mixer"] = false,

      -- Ignore decibel settings of the driver. Can be used to
      -- work around buggy drivers that report wrong values.
      --["api.alsa.ignore-dB"] = false,

      -- The profile set to use for the device. Usually this is
      -- "default.conf" but can be changed with a udev rule or here.
      ["device.profile-set"] = "force-speaker-and-int-mic.conf",

      -- The default active profile. Is by default set to "Off".
      ["device.profile"] = "General",

      -- Automatically select the best profile. This is the
      -- highest priority available profile. This is disabled
      -- here and instead implemented in the session manager
      -- where it can save and load previous preferences.
      ["api.acp.auto-profile"] = false,

      -- Automatically switch to the highest priority available port.
      -- This is disabled here and implemented in the session manager instead.
      ["api.acp.auto-port"] = false,

      -- Other properties can be set here.
      --["device.nick"] = "Elgato Sound Card",
    },
  }
```


```lua
alsa_monitor.enabled = true

alsa_monitor.properties = {
  -- Create a JACK device. This is not enabled by default because
  -- it requires that the PipeWire JACK replacement libraries are
  -- not used by the session manager, in order to be able to
  -- connect to the real JACK server.
  --["alsa.jack-device"] = false,

  -- Reserve devices via org.freedesktop.ReserveDevice1 on D-Bus
  -- Disable if you are running a system-wide instance, which
  -- doesn't have access to the D-Bus user session
  ["alsa.reserve"] = true,
  --["alsa.reserve.priority"] = -20,
  --["alsa.reserve.application-name"] = "WirePlumber",

  -- Enables MIDI functionality
  ["alsa.midi"] = true,

  -- Enables monitoring of alsa MIDI devices
  ["alsa.midi.monitoring"] = true,

  -- MIDI bridge node properties
  ["alsa.midi.node-properties"] = {
    -- Name set for the node with ALSA MIDI ports
    ["node.name"] = "Midi-Bridge",
    -- Removes longname/number from MIDI port names
    --["api.alsa.disable-longname"] = true,
  },

  -- These properties override node defaults when running in a virtual machine.
  -- The rules below still override those.
  ["vm.node.defaults"] = {
    ["api.alsa.period-size"] = 256,
    ["api.alsa.headroom"] = 8192,
  },
}

alsa_monitor.rules = {
  -- An array of matches/actions to evaluate.
  --
  -- If you want to disable some devices or nodes, you can apply properties per device as the following example.
  -- The name can be found by running pw-cli ls Device, or pw-cli dump Device
  --{
  --  matches = {
  --    {
  --      { "device.name", "matches", "name_of_some_disabled_card" },
  --    },
  --  },
  --  apply_properties = {
  --    ["device.disabled"] = true,
  --  },
  --}
  {
    -- Rules for matching a device or node. It is an array of
    -- properties that all need to match the regexp. If any of the
    -- matches work, the actions are executed for the object.
    matches = {
      {
        -- This matches all cards.
        { "device.name", "matches", "alsa_card.*" },
      },
    },
    -- Apply properties on the matched object.
    apply_properties = {
      -- Use ALSA-Card-Profile devices. They use UCM or the profile
      -- configuration to configure the device and mixer settings.
      ["api.alsa.use-acp"] = true,

      -- Use UCM instead of profile when available. Can be
      -- disabled to skip trying to use the UCM profile.
      ["api.alsa.use-ucm"] = true,

      -- Don't use the hardware mixer for volume control. It
      -- will only use software volume. The mixer is still used
      -- to mute unused paths based on the selected port.
      ["api.alsa.soft-mixer"] = true,

      -- Ignore decibel settings of the driver. Can be used to
      -- work around buggy drivers that report wrong values.
      -- ["api.alsa.ignore-dB"] = false,

      -- The profile set to use for the device. Usually this is
      -- "default.conf" but can be changed with a udev rule or here.
      --["device.profile-set"] = "profileset-name",

      -- The default active profile. Is by default set to "Off".
      --["device.profile"] = "default profile name",

      -- Automatically select the best profile. This is the
      -- highest priority available profile. This is disabled
      -- here and instead implemented in the session manager
      -- where it can save and load previous preferences.
      ["api.acp.auto-profile"] = false,

      -- Automatically switch to the highest priority available port.
      -- This is disabled here and implemented in the session manager instead.
      ["api.acp.auto-port"] = false,

      -- Other properties can be set here.
      --["device.nick"] = "My Device",
    },
  },
  {
    -- Rules for matching a device or node. It is an array of
    -- properties that all need to match the regexp. If any of the
    -- matches work, the actions are executed for the object.
    matches = {
      {
        -- This matches all cards.
        { "device.name", "matches", "alsa_card.usb-Elgato*" },
      },
    },
    -- Apply properties on the matched object.
    apply_properties = {
      -- Use ALSA-Card-Profile devices. They use UCM or the profile
      -- configuration to configure the device and mixer settings.
      ["api.alsa.use-acp"] = false,

      -- Use UCM instead of profile when available. Can be
      -- disabled to skip trying to use the UCM profile.
      ["api.alsa.use-ucm"] = false,

      -- Don't use the hardware mixer for volume control. It
      -- will only use software volume. The mixer is still used
      -- to mute unused paths based on the selected port.
      ["api.alsa.soft-mixer"] = false,

      -- Ignore decibel settings of the driver. Can be used to
      -- work around buggy drivers that report wrong values.
      --["api.alsa.ignore-dB"] = false,

      -- The profile set to use for the device. Usually this is
      -- "default.conf" but can be changed with a udev rule or here.
      ["device.profile-set"] = "force-speaker-and-int-mic.conf",

      -- The default active profile. Is by default set to "Off".
      ["device.profile"] = "General",

      -- Automatically select the best profile. This is the
      -- highest priority available profile. This is disabled
      -- here and instead implemented in the session manager
      -- where it can save and load previous preferences.
      ["api.acp.auto-profile"] = false,

      -- Automatically switch to the highest priority available port.
      -- This is disabled here and implemented in the session manager instead.
      ["api.acp.auto-port"] = false,

      -- Other properties can be set here.
      --["device.nick"] = "Elgato Sound Card",
    },
  },
  {
    matches = {
      {
        -- Matches all sources.
        { "node.name", "matches", "alsa_input.*" },
      },
      {
        -- Matches all sinks.
        { "node.name", "matches", "alsa_output.*" },
      },
    },
    apply_properties = {
      --["node.nick"]              = "My Node",
      --["node.description"]       = "My Node Description",
      --["priority.driver"]        = 100,
      --["priority.session"]       = 100,
      --["node.pause-on-idle"]     = false,
      --["monitor.channel-volumes"] = false
      --["resample.quality"]       = 4,
      --["resample.disable"]       = false,
      --["channelmix.normalize"]   = false,
      --["channelmix.mix-lfe"]     = false,
      --["channelmix.upmix"]       = true,
      --["channelmix.upmix-method"] = "psd",  -- "none" or "simple"
      --["channelmix.lfe-cutoff"]  = 150,
      --["channelmix.fc-cutoff"]   = 12000,
      --["channelmix.rear-delay"]  = 12.0,
      --["channelmix.stereo-widen"] = 0.0,
      --["channelmix.hilbert-taps"] = 0,
      --["channelmix.disable"]     = false,
      --["dither.noise"]           = 0,
      --["dither.method"]          = "none",  -- "rectangular", "triangular" or "shaped5"
      --["audio.channels"]         = 2,
      --["audio.format"]           = "S16LE",
      --["audio.rate"]             = 44100,
      --["audio.allowed-rates"]    = "32000,96000",
      --["audio.position"]         = "FL,FR",
      --["api.alsa.period-size"]   = 1024,
      --["api.alsa.period-num"]    = 2,
      --["api.alsa.headroom"]      = 0,
      --["api.alsa.start-delay"]   = 0,
      --["api.alsa.disable-mmap"]  = false,
      --["api.alsa.disable-batch"] = false,
      --["api.alsa.use-chmap"]     = false,
      --["api.alsa.multirate"]     = true,
      --["latency.internal.rate"]  = 0
      --["latency.internal.ns"]    = 0
      --["clock.name"]             = "api.alsa.0"
      --["session.suspend-timeout-seconds"] = 5,  -- 0 disables suspend
    },
  },
}
```
