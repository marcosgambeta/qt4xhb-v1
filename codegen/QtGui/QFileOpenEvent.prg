$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileOpenEvent INHERIT QEvent

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

$prototype=QFileOpenEvent(const QString &file)
$internalConstructor=|new1|const QString &

$prototype=QFileOpenEvent(const QUrl &url)
$internalConstructor=|new2|const QUrl &

//[1]QFileOpenEvent(const QString &file)
//[2]QFileOpenEvent(const QUrl &url)

HB_FUNC_STATIC( QFILEOPENEVENT_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileOpenEvent_new1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QFileOpenEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString file () const
$method=|QString|file|

$prototype=bool openFile ( QFile & file, QIODevice::OpenMode flags ) const
$method=|bool|openFile|QFile &,QIODevice::OpenMode

$prototype=QUrl url () const
$method=|QUrl|url|

#pragma ENDDUMP
