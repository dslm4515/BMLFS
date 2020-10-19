groupadd -fg 27 polkitd &&
useradd -c "PolicyKit Daemon Owner" -d /etc/polkit-1 -u 27 \
	        -g polkitd -s /bin/false polkitd
chown -v -R polkitd:polkitd /etc/polkit-1/rules.d /usr/share/polkit-1/rules.d
chmod -v -R 700  /etc/polkit-1/rules.d            /usr/share/polkit-1/rules.d
chmod -v    4755 /usr/lib/polkit-1/polkit-agent-helper-1
chmod -v    4755 /usr/bin/pkexec
