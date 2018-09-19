FROM azul/zulu-openjdk-alpine:10
RUN ZULU_DIR=$( ls -d /usr/lib/jvm/zulu10* ) && \
	cd $ZULU_DIR && \
	rm -rf demo man legal lib/src.zip && \
	chown -R root:root . && \
	apk add --no-cache attr && \
	setfattr -n user.pax.flags -v m /usr/lib/jvm/zulu10*/bin/java && \
	apk del attr && \
	java -version
