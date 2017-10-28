$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileOpenEvent INHERIT QEvent

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD file
   METHOD openFile
   METHOD url

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFileOpenEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QUrl>

/*
QFileOpenEvent(const QString &file)
*/
$constructor=|new1|const QString &

/*
QFileOpenEvent(const QUrl &url)
*/
$constructor=|new2|const QUrl &

//[1]QFileOpenEvent(const QString &file)
//[2]QFileOpenEvent(const QUrl &url)

HB_FUNC_STATIC( QFILEOPENEVENT_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILEOPENEVENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QFILEOPENEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString file () const
*/
$method=|QString|file|

/*
bool openFile ( QFile & file, QIODevice::OpenMode flags ) const
*/
$method=|bool|openFile|QFile &,QIODevice::OpenMode

/*
QUrl url () const
*/
$method=|QUrl|url|

#pragma ENDDUMP
