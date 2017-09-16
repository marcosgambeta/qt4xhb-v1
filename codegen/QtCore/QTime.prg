$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTIME
#endif

CLASS QTime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addMSecs
   METHOD addSecs
   METHOD elapsed
   METHOD hour
   METHOD isNull
   METHOD isValid1
   METHOD minute
   METHOD msec
   METHOD msecsTo
   METHOD restart
   METHOD second
   METHOD secsTo
   METHOD setHMS
   METHOD start
   METHOD toString1
   METHOD toString2
   METHOD toString
   METHOD currentTime
   METHOD fromString1
   METHOD fromString2
   METHOD fromString
   METHOD isValid2
   METHOD isValid

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTime>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTime()
*/
$constructor=|new1|

/*
QTime(int h, int m, int s = 0, int ms = 0)
*/
$constructor=|new2|int,int,int=0,int=0

//[1]QTime()
//[2]QTime(int h, int m, int s = 0, int ms = 0)

HB_FUNC_STATIC( QTIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIME_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTIME_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTIME_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTIME_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNIL(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTIME_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QTime addMSecs(int ms) const
*/
$method=|QTime|addMSecs|int

/*
QTime addSecs(int s) const
*/
$method=|QTime|addSecs|int

/*
int elapsed() const
*/
$method=|int|elapsed|

/*
int hour() const
*/
$method=|int|hour|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
bool isValid() const
*/
$method=|bool|isValid,isValid1|

/*
int minute() const
*/
$method=|int|minute|

/*
int msec() const
*/
$method=|int|msec|

/*
int msecsTo(const QTime & t) const
*/
$method=|int|msecsTo|const QTime &

/*
int restart()
*/
$method=|int|restart|

/*
int second() const
*/
$method=|int|second|

/*
int secsTo(const QTime & t) const
*/
$method=|int|secsTo|const QTime &

/*
bool setHMS(int h, int m, int s, int ms = 0)
*/
$method=|bool|setHMS|int,int,int,int=0

/*
void start()
*/
$method=|void|start|

/*
QString toString(const QString & format) const
*/
$method=|QString|toString,toString1|const QString &

/*
QString toString(Qt::DateFormat format = Qt::TextDate) const
*/
$method=|QString|toString,toString2|Qt::DateFormat=Qt::TextDate

//[1]QString toString(const QString & format) const
//[2]QString toString(Qt::DateFormat format = Qt::TextDate) const

HB_FUNC_STATIC( QTIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTIME_TOSTRING1 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTIME_TOSTRING2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTime currentTime()
*/
$staticMethod=|QTime|currentTime|

/*
static QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
*/
$staticMtehod=|QTime|fromString,fromString1|const QString &,Qt::DateFormat=Qt::TextDate

/*
QTime fromString(const QString & string, const QString & format)
*/
$method=|QTime|fromString,fromString2|const QString &,const QString &

//[1]QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
//[2]QTime fromString(const QString & string, const QString & format)

HB_FUNC_STATIC( QTIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTIME_FROMSTRING1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QTIME_FROMSTRING2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isValid(int h, int m, int s, int ms = 0)
*/
$staticMethod=|bool|isValid,isValid2|int,int,int,int=0

//[1]bool isValid() const
//[2]bool isValid(int h, int m, int s, int ms = 0)

HB_FUNC_STATIC( QTIME_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNIL(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTIME_ISVALID2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
