FROM azul/zulu-openjdk-alpine:10
RUN ZULU_DIR=$( ls -d /usr/lib/jvm/zulu10* ) && \
	cd $ZULU_DIR && \
	rm -rf demo man legal lib/src.zip && \
	chown -R root:root . && \
	java -version
