DEL /Q %HOMEDRIVE%%HOMEPATH%\.vimrc_gui
RD  /Q %HOMEDRIVE%%HOMEPATH%\.vim

COPY .\vimrc_gui %HOMEDRIVE%%HOMEPATH%\.vimrc_gui
XCOPY .\vim %HOMEDRIVE%%HOMEPATH%\.vim /S /E /-Y


