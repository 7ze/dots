# Window Manager Setup

At the moment I am sporting bspwm with sxhkd, and so far, I am loving it.

## [`bspwm`](https://github.com/baskerville/bspwm)

bspwm is a tiling window manager that represents windows as the leaves of a full
binary tree.  It only responds to X events, and the messages it receives on a
dedicated socket.  bspc is a program that writes messages on bspwm's socket.
bspwm doesn't handle any keyboard or pointer inputs: a third party program (e.g.
sxhkd) is needed in order to translate keyboard and pointer events to bspc
invocations.

## [`sxhkd`](https://github.com/baskerville/sxhkd)

sxhkd is an X daemon that reacts to input events by executing commands.  Its
configuration file is a series of bindings that define the associations between
the input events and the commands.

## `bspwm architecture`

```custom
        PROCESS          SOCKET
sxhkd  -------->  bspc  <------>  bspwm
```

## Setup

I have configured my bspwm setup for a dual monitor setup, but it should work
for both single and dual monitor setup.

```custom
~
└── .config
    ├── sxhkd
    │   └── sxhkdrc           configuration file for sxhkd
    └── bspwm
        └── bspwmrc           configuration file for bspwm
```

I will be checking out *dwm* in the meantime. I like the *suckless philosophy* and I
am looking forward to it.
