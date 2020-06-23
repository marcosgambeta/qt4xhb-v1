%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$prototype=QFileOpenEvent(const QString &file)
$internalConstructor=|new1|const QString &

$prototype=QFileOpenEvent(const QUrl &url)
$internalConstructor=|new2|const QUrl &

/*
[1]QFileOpenEvent(const QString &file)
[2]QFileOpenEvent(const QUrl &url)
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=QString file() const

$prototypeV2=bool openFile( QFile & file, QIODevice::OpenMode flags ) const

$prototypeV2=QUrl url() const

#pragma ENDDUMP
