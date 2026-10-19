#!/bin/sh

# workaround for https://github.com/eclipse-platform/eclipse.platform.swt/issues/568
if [ ! -f ~/.swt/trims.prefs ]; then
  mkdir -p ~/.swt
  cat >~/.swt/trims.prefs <<_END
trimWidths=0 4 6 0 6 0
trimHeights=0 4 6 0 29 23
_END
fi

export JAVA_HOME=/app/jre

exec $JAVA_HOME/bin/java -jar /app/bin/nxmc-launcher.jar "$@"
