/bin/mount -o bind /share/CACHEDEV3_DATA/opt /opt
echo "export PATH=$PATH:/opt/bin:/opt/sbin" >> /root/.profile
echo "export PATH=$PATH:/opt/bin:/opt/sbin" >> /root/.bashrc
echo "/bin/umount /opt;exit 0" >> /etc/rcK.d/QK99optware.sh
/bin/chmod a+x /etc/rcK.d/QK99optware.sh
echo "/usr/bin/killall mpd;exit 0" >> /etc/rcK.d/QK98mpd.sh
/bin/chmod a+x /etc/rcK.d/QK98mpd.sh
/bin/mkdir /share/homes
/bin/chown admin:administrator /share/homes
/bin/ln -s /share/CE_CACHEDEV4_DATA/Homes/user /share/homes/user
/opt/bin/mpd
