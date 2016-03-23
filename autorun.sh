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
/bin/ln -s /share/CE_CACHEDEV4_DATA/Git /share/homes/git
/bin/ln -s /opt/bin/git-upload-pack /usr/bin/git-upload-pack
/bin/ln -s /opt/bin/git /usr/bin/git
/bin/ln -s /opt/bin/git-cvsserver /usr/bin/git-cvsserver
/bin/ln -s /opt/bin/git-shell /usr/bin/git-shell
/bin/ln -s /opt/bin/git-receive-pack /usr/bin/git-receive-pack
/bin/ln -s /opt/bin/git-upload-archive /usr/bin/git-upload-archive
/opt/bin/mpd
