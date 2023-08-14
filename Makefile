EXCLUDES=	fortunes Makefile bible README.md LICENSE

.for exclude in ${EXCLUDES}
exclline+=	-o -name '${exclude}'
.endfor

FORTUNE_FILES!=		find ${.CURDIR} -maxdepth 1 -type f -name '*.dat' ${exclline} -prune -o -type f -print

all: fortunes.dat

fortunes: ${FORTUNE_FILES}
	cat ${.ALLSRC} > ${.TARGET}

fortunes.dat: fortunes
	strfile ${.OODATE}

clean:
	rm -f fortunes fortunes.dat

depend:
