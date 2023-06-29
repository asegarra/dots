#
# ~/.bash_profile
#

eval $(keychain --eval --noask --quiet id_ed25519)

export VDPAU_DRIVER=radeonsi

if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	export XDG_CURRENT_DESKTOP=sway
	export XDG_SESSION_TYPE=wayland
	export MOZ_ENABLE_WAYLAND=1
	exec sway >/tmp/sway.log 2>&1
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
