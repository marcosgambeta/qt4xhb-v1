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
HB_FUNC_STATIC( QFILEOPENEVENT_NEW1 ) // TODO: revisar e corrigir
{
  QFileOpenEvent * par1 = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QFileOpenEvent * o = new QFileOpenEvent ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QFileOpenEvent(const QUrl &url)
*/
HB_FUNC_STATIC( QFILEOPENEVENT_NEW2 ) // TODO: revisar e corrigir
{
  QFileOpenEvent * par1 = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QFileOpenEvent * o = new QFileOpenEvent ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

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
