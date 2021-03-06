set colsep ,

set pagesize 0
set trimspool on
set headsep off
set linesize 200
set numw 40
spool GEM_all.csv


SELECT I.DPID, I.ACTUAL_VMON, I.ACTUAL_IMON, TO_CHAR(I.CHANGE_DATE, 'YYYY.MM.DD HH24:MI:SS') FROM CMS_GEM_PVSS_COND.FWCAENCHANNELA1515 I WHERE  I.DPID IN (48,49,50,51,52,53,54,55,56,57,58,59,60,61) AND  I.CHANGE_DATE BETWEEN TO_TIMESTAMP( 'START_DATE_SHORT', 'YYYY.MM.DD HH24:MI:SS') AND TO_TIMESTAMP( 'CURRENT_DATE', 'YYYY.MM.DD HH24:MI:SS') ORDER BY I.CHANGE_DATE;

SELECT I.DPID, I.ACTUAL_VMON, I.ACTUAL_IMON, TO_CHAR(I.CHANGE_DATE, 'YYYY.MM.DD HH24:MI:SS') FROM CMS_GEM_PVSS_COND.FWCAENCHANNEL I WHERE  I.DPID IN (183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224) AND  I.CHANGE_DATE BETWEEN TO_TIMESTAMP( 'START_DATE_SHORT', 'YYYY.MM.DD HH24:MI:SS') AND TO_TIMESTAMP( 'CURRENT_DATE', 'YYYY.MM.DD HH24:MI:SS') ORDER BY I.CHANGE_DATE;

SELECT I.DPID,I.DPE_STATUS, I.VALUE, TO_CHAR(I.CHANGE_DATE, 'YYYY.MM.DD HH24:MI:SS') FROM CMS_GEM_PVSS_COND.DIPSUBSCRIPTIONSFLOAT I WHERE  I.DPID IN (31,32,33) AND  I.CHANGE_DATE BETWEEN TO_TIMESTAMP( 'START_DATE_SHORT', 'YYYY.MM.DD HH24:MI:SS') AND TO_TIMESTAMP( 'CURRENT_DATE', 'YYYY.MM.DD HH24:MI:SS') ORDER BY I.CHANGE_DATE;

spool off

exit

