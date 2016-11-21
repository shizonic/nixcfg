{ config, lib, pkgs, ... }:

{
    system.activationScripts.asound = ''
    mkdir -p /var/lib/alsa;
    cat >/var/lib/alsa/asound.state <<EOF
state.Intel {
	control.1 {
		iface CARD
		name 'HDMI/DP,pcm=3 Jack'
		value false
		comment {
			access read
			type BOOLEAN
			count 1
		}
	}
	control.2 {
		iface MIXER
		name 'IEC958 Playback Con Mask'
		value '0fff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access read
			type IEC958
			count 1
		}
	}
	control.3 {
		iface MIXER
		name 'IEC958 Playback Pro Mask'
		value '0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access read
			type IEC958
			count 1
		}
	}
	control.4 {
		iface MIXER
		name 'IEC958 Playback Default'
		value '0400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access 'read write'
			type IEC958
			count 1
		}
	}
	control.5 {
		iface MIXER
		name 'IEC958 Playback Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.6 {
		iface PCM
		device 3
		name ELD
		value '''
		comment {
			access 'read volatile'
			type BYTES
			count 0
		}
	}
	control.7 {
		iface CARD
		name 'HDMI/DP,pcm=7 Jack'
		value false
		comment {
			access read
			type BOOLEAN
			count 1
		}
	}
	control.8 {
		iface MIXER
		name 'IEC958 Playback Con Mask'
		index 1
		value '0fff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access read
			type IEC958
			count 1
		}
	}
	control.9 {
		iface MIXER
		name 'IEC958 Playback Pro Mask'
		index 1
		value '0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access read
			type IEC958
			count 1
		}
	}
	control.10 {
		iface MIXER
		name 'IEC958 Playback Default'
		index 1
		value '0400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access 'read write'
			type IEC958
			count 1
		}
	}
	control.11 {
		iface MIXER
		name 'IEC958 Playback Switch'
		index 1
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.12 {
		iface PCM
		device 7
		name ELD
		value '''
		comment {
			access 'read volatile'
			type BYTES
			count 0
		}
	}
	control.13 {
		iface PCM
		device 3
		name 'Playback Channel Map'
		value.0 0
		value.1 0
		value.2 0
		value.3 0
		value.4 0
		value.5 0
		value.6 0
		value.7 0
		comment {
			access 'read write'
			type INTEGER
			count 8
			range '0 - 36'
		}
	}
	control.14 {
		iface PCM
		device 7
		name 'Playback Channel Map'
		value.0 0
		value.1 0
		value.2 0
		value.3 0
		value.4 0
		value.5 0
		value.6 0
		value.7 0
		comment {
			access 'read write'
			type INTEGER
			count 8
			range '0 - 36'
		}
	}
}
state.bytmax98090 {
	control.1 {
		iface MIXER
		name 'MIC Bias VCM Bandgap'
		value 'High Performance'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 'Low Power'
			item.1 'High Performance'
		}
	}
	control.2 {
		iface MIXER
		name 'DMIC MIC Comp Filter Config'
		value 6
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 15'
		}
	}
	control.3 {
		iface MIXER
		name 'MIC1 Boost Volume'
		value 0
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 2'
			dbmin 0
			dbmax 3000
			dbvalue.0 0
		}
	}
	control.4 {
		iface MIXER
		name 'MIC2 Boost Volume'
		value 1
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 2'
			dbmin 0
			dbmax 3000
			dbvalue.0 2000
		}
	}
	control.5 {
		iface MIXER
		name 'MIC1 Volume'
		value 0
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 20'
			dbmin 0
			dbmax 2000
			dbvalue.0 0
		}
	}
	control.6 {
		iface MIXER
		name 'MIC2 Volume'
		value 0
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 20'
			dbmin 0
			dbmax 2000
			dbvalue.0 0
		}
	}
	control.7 {
		iface MIXER
		name 'LINEA Single Ended Volume'
		value 1
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 1'
			dbmin -600
			dbmax 0
			dbvalue.0 0
		}
	}
	control.8 {
		iface MIXER
		name 'LINEB Single Ended Volume'
		value 1
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 1'
			dbmin -600
			dbmax 0
			dbvalue.0 0
		}
	}
	control.9 {
		iface MIXER
		name 'LINEA Volume'
		value 2
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 5'
			dbmin -600
			dbmax 2000
			dbvalue.0 0
		}
	}
	control.10 {
		iface MIXER
		name 'LINEB Volume'
		value 2
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 5'
			dbmin -600
			dbmax 2000
			dbvalue.0 0
		}
	}
	control.11 {
		iface MIXER
		name 'LINEA Ext Resistor Gain Mode'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.12 {
		iface MIXER
		name 'LINEB Ext Resistor Gain Mode'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.13 {
		iface MIXER
		name 'ADCL Boost Volume'
		value 0
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 7'
			dbmin 0
			dbmax 4200
			dbvalue.0 0
		}
	}
	control.14 {
		iface MIXER
		name 'ADCR Boost Volume'
		value 0
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 7'
			dbmin 0
			dbmax 4200
			dbvalue.0 0
		}
	}
	control.15 {
		iface MIXER
		name 'ADCL Volume'
		value 12
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 15'
			dbmin -1200
			dbmax 300
			dbvalue.0 0
		}
	}
	control.16 {
		iface MIXER
		name 'ADCR Volume'
		value 11
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 15'
			dbmin -1200
			dbmax 300
			dbvalue.0 -100
		}
	}
	control.17 {
		iface MIXER
		name 'ADC Oversampling Rate'
		value '128*fs'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 '64*fs'
			item.1 '128*fs'
		}
	}
	control.18 {
		iface MIXER
		name 'ADC Quantizer Dither'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.19 {
		iface MIXER
		name 'ADC High Performance Mode'
		value 'High Performance'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 'Low Power'
			item.1 'High Performance'
		}
	}
	control.20 {
		iface MIXER
		name 'DAC Mono Mode'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.21 {
		iface MIXER
		name 'SDIN Mode'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.22 {
		iface MIXER
		name 'SDOUT Mode'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.23 {
		iface MIXER
		name 'SDOUT Hi-Z Mode'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.24 {
		iface MIXER
		name 'Filter Mode'
		value Music
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 Voice
			item.1 Music
		}
	}
	control.25 {
		iface MIXER
		name 'Record Path DC Blocking'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.26 {
		iface MIXER
		name 'Playback Path DC Blocking'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.27 {
		iface MIXER
		name 'Digital BQ Volume'
		value 15
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 15'
			dbmin -1500
			dbmax 0
			dbvalue.0 0
		}
	}
	control.28 {
		iface MIXER
		name 'Digital Sidetone Volume'
		value 0
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 30'
			dbmin 50
			dbmax 6050
			dbvalue.0 50
		}
	}
	control.29 {
		iface MIXER
		name 'Digital Coarse Volume'
		value 0
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 3'
			dbmin 0
			dbmax 1800
			dbvalue.0 0
		}
	}
	control.30 {
		iface MIXER
		name 'Digital Volume'
		value 15
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 15'
			dbmin -1500
			dbmax 0
			dbvalue.0 0
		}
	}
	control.31 {
		iface MIXER
		name 'EQ Coefficients'
		value '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access 'read write'
			type BYTES
			count 105
		}
	}
	control.32 {
		iface MIXER
		name 'Digital EQ 3 Band Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.33 {
		iface MIXER
		name 'Digital EQ 5 Band Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.34 {
		iface MIXER
		name 'Digital EQ 7 Band Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.35 {
		iface MIXER
		name 'Digital EQ Clipping Detection'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.36 {
		iface MIXER
		name 'Digital EQ Volume'
		value 15
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 15'
			dbmin -1500
			dbmax 0
			dbvalue.0 0
		}
	}
	control.37 {
		iface MIXER
		name 'ALC Enable'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.38 {
		iface MIXER
		name 'ALC Attack Time'
		value '0.5ms'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 '0.5ms'
			item.1 '1ms'
			item.2 '5ms'
			item.3 '10ms'
			item.4 '25ms'
			item.5 '50ms'
			item.6 '100ms'
			item.7 '200ms'
		}
	}
	control.39 {
		iface MIXER
		name 'ALC Release Time'
		value '8s'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 '8s'
			item.1 '4s'
			item.2 '2s'
			item.3 '1s'
			item.4 '0.5s'
			item.5 '0.25s'
			item.6 '0.125s'
			item.7 '0.0625s'
		}
	}
	control.40 {
		iface MIXER
		name 'ALC Make Up Volume'
		value 0
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 12'
			dbmin 0
			dbmax 1200
			dbvalue.0 0
		}
	}
	control.41 {
		iface MIXER
		name 'ALC Compression Ratio'
		value '1:1'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 '1:1'
			item.1 '1:1.5'
			item.2 '1:2'
			item.3 '1:4'
			item.4 '1:INF'
		}
	}
	control.42 {
		iface MIXER
		name 'ALC Expansion Ratio'
		value '1:1'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 '1:1'
			item.1 '2:1'
			item.2 '3:1'
		}
	}
	control.43 {
		iface MIXER
		name 'ALC Compression Threshold Volume'
		value 31
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 31'
			dbmin -3100
			dbmax 0
			dbvalue.0 0
		}
	}
	control.44 {
		iface MIXER
		name 'ALC Expansion Threshold Volume'
		value 31
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 31'
			dbmin -6600
			dbmax -3500
			dbvalue.0 -3500
		}
	}
	control.45 {
		iface MIXER
		name 'DAC HP Playback Performance Mode'
		value 'High Performance'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 'High Performance'
			item.1 'Low Power'
		}
	}
	control.46 {
		iface MIXER
		name 'DAC High Performance Mode'
		value 'High Performance'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 'Low Power'
			item.1 'High Performance'
		}
	}
	control.47 {
		iface MIXER
		name 'Headphone Left Mixer Volume'
		value 3
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 3'
			dbmin -1200
			dbmax 0
			dbvalue.0 0
		}
	}
	control.48 {
		iface MIXER
		name 'Headphone Right Mixer Volume'
		value 3
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 3'
			dbmin -1200
			dbmax 0
			dbvalue.0 0
		}
	}
	control.49 {
		iface MIXER
		name 'Speaker Left Mixer Volume'
		value 3
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 3'
			dbmin -1200
			dbmax 0
			dbvalue.0 0
		}
	}
	control.50 {
		iface MIXER
		name 'Speaker Right Mixer Volume'
		value 3
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 3'
			dbmin -1200
			dbmax 0
			dbvalue.0 0
		}
	}
	control.51 {
		iface MIXER
		name 'Receiver Left Mixer Volume'
		value 3
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 3'
			dbmin -1200
			dbmax 0
			dbvalue.0 0
		}
	}
	control.52 {
		iface MIXER
		name 'Receiver Right Mixer Volume'
		value 3
		comment {
			access 'read write'
			type INTEGER
			count 1
			range '0 - 3'
			dbmin -1200
			dbmax 0
			dbvalue.0 0
		}
	}
	control.53 {
		iface MIXER
		name 'Headphone Volume'
		value.0 0
		value.1 0
		comment {
			access 'read write'
			type INTEGER
			count 2
			range '0 - 31'
			dbmin -6700
			dbmax 300
			dbvalue.0 -6700
			dbvalue.1 -6700
		}
	}
	control.54 {
		iface MIXER
		name 'Speaker Volume'
		value.0 14
		value.1 14
		comment {
			access 'read write'
			type INTEGER
			count 2
			range '0 - 39'
			dbmin -4800
			dbmax 1400
			dbvalue.0 -600
			dbvalue.1 -600
		}
	}
	control.55 {
		iface MIXER
		name 'Receiver Volume'
		value.0 21
		value.1 21
		comment {
			access 'read write'
			type INTEGER
			count 2
			range '0 - 31'
			dbmin -6200
			dbmax 800
			dbvalue.0 0
			dbvalue.1 0
		}
	}
	control.56 {
		iface MIXER
		name 'Headphone Left Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.57 {
		iface MIXER
		name 'Headphone Right Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.58 {
		iface MIXER
		name 'Speaker Left Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.59 {
		iface MIXER
		name 'Speaker Right Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.60 {
		iface MIXER
		name 'Receiver Left Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.61 {
		iface MIXER
		name 'Receiver Right Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.62 {
		iface MIXER
		name 'Zero-Crossing Detection'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.63 {
		iface MIXER
		name 'Enhanced Vol Smoothing'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.64 {
		iface MIXER
		name 'Volume Adjustment Smoothing'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.65 {
		iface MIXER
		name 'Biquad Coefficients'
		value '000000000000000000000000000000'
		comment {
			access 'read write'
			type BYTES
			count 15
		}
	}
	control.66 {
		iface MIXER
		name 'Biquad Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.67 {
		iface CARD
		name 'Headphone Jack'
		value false
		comment {
			access read
			type BOOLEAN
			count 1
		}
	}
	control.68 {
		iface CARD
		name 'Headset Mic Jack'
		value false
		comment {
			access read
			type BOOLEAN
			count 1
		}
	}
	control.69 {
		iface MIXER
		name 'Headphone Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.70 {
		iface MIXER
		name 'Headset Mic Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.71 {
		iface MIXER
		name 'Int Mic Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.72 {
		iface MIXER
		name 'Ext Spk Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.73 {
		iface MIXER
		name 'MIC1 Mux'
		value IN12
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 IN12
			item.1 IN56
		}
	}
	control.74 {
		iface MIXER
		name 'MIC2 Mux'
		value IN34
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 IN34
			item.1 IN56
		}
	}
	control.75 {
		iface MIXER
		name 'DMIC Mux'
		value ADC
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 ADC
			item.1 DMIC
		}
	}
	control.76 {
		iface MIXER
		name 'LINEA Mixer IN1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.77 {
		iface MIXER
		name 'LINEA Mixer IN3 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.78 {
		iface MIXER
		name 'LINEA Mixer IN5 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.79 {
		iface MIXER
		name 'LINEA Mixer IN34 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.80 {
		iface MIXER
		name 'LINEB Mixer IN2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.81 {
		iface MIXER
		name 'LINEB Mixer IN4 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.82 {
		iface MIXER
		name 'LINEB Mixer IN6 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.83 {
		iface MIXER
		name 'LINEB Mixer IN56 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.84 {
		iface MIXER
		name 'Left ADC Mixer IN12 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.85 {
		iface MIXER
		name 'Left ADC Mixer IN34 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.86 {
		iface MIXER
		name 'Left ADC Mixer IN56 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.87 {
		iface MIXER
		name 'Left ADC Mixer LINEA Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.88 {
		iface MIXER
		name 'Left ADC Mixer LINEB Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.89 {
		iface MIXER
		name 'Left ADC Mixer MIC1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.90 {
		iface MIXER
		name 'Left ADC Mixer MIC2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.91 {
		iface MIXER
		name 'Right ADC Mixer IN12 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.92 {
		iface MIXER
		name 'Right ADC Mixer IN34 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.93 {
		iface MIXER
		name 'Right ADC Mixer IN56 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.94 {
		iface MIXER
		name 'Right ADC Mixer LINEA Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.95 {
		iface MIXER
		name 'Right ADC Mixer LINEB Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.96 {
		iface MIXER
		name 'Right ADC Mixer MIC1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.97 {
		iface MIXER
		name 'Right ADC Mixer MIC2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.98 {
		iface MIXER
		name 'LBENL Mux'
		value Normal
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 Normal
			item.1 Loopback
		}
	}
	control.99 {
		iface MIXER
		name 'LBENR Mux'
		value Normal
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 Normal
			item.1 Loopback
		}
	}
	control.100 {
		iface MIXER
		name 'LTENL Mux'
		value Normal
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 Normal
			item.1 Loopthrough
		}
	}
	control.101 {
		iface MIXER
		name 'LTENR Mux'
		value Normal
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 Normal
			item.1 Loopthrough
		}
	}
	control.102 {
		iface MIXER
		name 'STENL Mux'
		value Normal
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 Normal
			item.1 'Sidetone Left'
		}
	}
	control.103 {
		iface MIXER
		name 'STENR Mux'
		value Normal
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 Normal
			item.1 'Sidetone Right'
		}
	}
	control.104 {
		iface MIXER
		name 'Left Headphone Mixer Left DAC Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.105 {
		iface MIXER
		name 'Left Headphone Mixer Right DAC Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.106 {
		iface MIXER
		name 'Left Headphone Mixer LINEA Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.107 {
		iface MIXER
		name 'Left Headphone Mixer LINEB Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.108 {
		iface MIXER
		name 'Left Headphone Mixer MIC1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.109 {
		iface MIXER
		name 'Left Headphone Mixer MIC2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.110 {
		iface MIXER
		name 'Right Headphone Mixer Left DAC Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.111 {
		iface MIXER
		name 'Right Headphone Mixer Right DAC Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.112 {
		iface MIXER
		name 'Right Headphone Mixer LINEA Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.113 {
		iface MIXER
		name 'Right Headphone Mixer LINEB Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.114 {
		iface MIXER
		name 'Right Headphone Mixer MIC1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.115 {
		iface MIXER
		name 'Right Headphone Mixer MIC2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.116 {
		iface MIXER
		name 'Left Speaker Mixer Left DAC Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.117 {
		iface MIXER
		name 'Left Speaker Mixer Right DAC Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.118 {
		iface MIXER
		name 'Left Speaker Mixer LINEA Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.119 {
		iface MIXER
		name 'Left Speaker Mixer LINEB Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.120 {
		iface MIXER
		name 'Left Speaker Mixer MIC1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.121 {
		iface MIXER
		name 'Left Speaker Mixer MIC2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.122 {
		iface MIXER
		name 'Right Speaker Mixer Left DAC Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.123 {
		iface MIXER
		name 'Right Speaker Mixer Right DAC Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.124 {
		iface MIXER
		name 'Right Speaker Mixer LINEA Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.125 {
		iface MIXER
		name 'Right Speaker Mixer LINEB Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.126 {
		iface MIXER
		name 'Right Speaker Mixer MIC1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.127 {
		iface MIXER
		name 'Right Speaker Mixer MIC2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.128 {
		iface MIXER
		name 'Left Receiver Mixer Left DAC Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.129 {
		iface MIXER
		name 'Left Receiver Mixer Right DAC Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.130 {
		iface MIXER
		name 'Left Receiver Mixer LINEA Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.131 {
		iface MIXER
		name 'Left Receiver Mixer LINEB Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.132 {
		iface MIXER
		name 'Left Receiver Mixer MIC1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.133 {
		iface MIXER
		name 'Left Receiver Mixer MIC2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.134 {
		iface MIXER
		name 'Right Receiver Mixer Left DAC Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.135 {
		iface MIXER
		name 'Right Receiver Mixer Right DAC Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.136 {
		iface MIXER
		name 'Right Receiver Mixer LINEA Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.137 {
		iface MIXER
		name 'Right Receiver Mixer LINEB Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.138 {
		iface MIXER
		name 'Right Receiver Mixer MIC1 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.139 {
		iface MIXER
		name 'Right Receiver Mixer MIC2 Switch'
		value false
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.140 {
		iface MIXER
		name 'LINMOD Mux'
		value 'Left Only'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 'Left Only'
			item.1 'Left and Right'
		}
	}
	control.141 {
		iface MIXER
		name 'MIXHPLSEL Mux'
		value 'DAC Only'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 'DAC Only'
			item.1 'HP Mixer'
		}
	}
	control.142 {
		iface MIXER
		name 'MIXHPRSEL Mux'
		value 'DAC Only'
		comment {
			access 'read write'
			type ENUMERATED
			count 1
			item.0 'DAC Only'
			item.1 'HP Mixer'
		}
	}
}
state.PCH {
	control.1 {
		iface CARD
		name 'HDMI/DP,pcm=3 Jack'
		value false
		comment {
			access read
			type BOOLEAN
			count 1
		}
	}
	control.2 {
		iface MIXER
		name 'IEC958 Playback Con Mask'
		value '0fff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access read
			type IEC958
			count 1
		}
	}
	control.3 {
		iface MIXER
		name 'IEC958 Playback Pro Mask'
		value '0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access read
			type IEC958
			count 1
		}
	}
	control.4 {
		iface MIXER
		name 'IEC958 Playback Default'
		value '0400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access 'read write'
			type IEC958
			count 1
		}
	}
	control.5 {
		iface MIXER
		name 'IEC958 Playback Switch'
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.6 {
		iface PCM
		device 3
		name ELD
		value '''
		comment {
			access 'read volatile'
			type BYTES
			count 0
		}
	}
	control.7 {
		iface CARD
		name 'HDMI/DP,pcm=7 Jack'
		value false
		comment {
			access read
			type BOOLEAN
			count 1
		}
	}
	control.8 {
		iface MIXER
		name 'IEC958 Playback Con Mask'
		index 1
		value '0fff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access read
			type IEC958
			count 1
		}
	}
	control.9 {
		iface MIXER
		name 'IEC958 Playback Pro Mask'
		index 1
		value '0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access read
			type IEC958
			count 1
		}
	}
	control.10 {
		iface MIXER
		name 'IEC958 Playback Default'
		index 1
		value '0400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
		comment {
			access 'read write'
			type IEC958
			count 1
		}
	}
	control.11 {
		iface MIXER
		name 'IEC958 Playback Switch'
		index 1
		value true
		comment {
			access 'read write'
			type BOOLEAN
			count 1
		}
	}
	control.12 {
		iface PCM
		device 7
		name ELD
		value '''
		comment {
			access 'read volatile'
			type BYTES
			count 0
		}
	}
	control.13 {
		iface PCM
		device 3
		name 'Playback Channel Map'
		value.0 0
		value.1 0
		value.2 0
		value.3 0
		value.4 0
		value.5 0
		value.6 0
		value.7 0
		comment {
			access 'read write'
			type INTEGER
			count 8
			range '0 - 36'
		}
	}
	control.14 {
		iface PCM
		device 7
		name 'Playback Channel Map'
		value.0 0
		value.1 0
		value.2 0
		value.3 0
		value.4 0
		value.5 0
		value.6 0
		value.7 0
		comment {
			access 'read write'
			type INTEGER
			count 8
			range '0 - 36'
		}
	}
}
EOF
    '';
}

