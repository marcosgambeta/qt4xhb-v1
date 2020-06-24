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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QImage>
#include <QtCore/QMimeData>
#include <QtGui/QPixmap>

$prototypeV2=void clear( QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=QImage image( QClipboard::Mode mode = QClipboard::Clipboard ) const

$prototypeV2=const QMimeData * mimeData( QClipboard::Mode mode = QClipboard::Clipboard ) const

$prototypeV2=bool ownsClipboard() const

$prototypeV2=bool ownsFindBuffer() const

$prototypeV2=bool ownsSelection() const

$prototypeV2=QPixmap pixmap( QClipboard::Mode mode = QClipboard::Clipboard ) const

$prototypeV2=void setImage( const QImage & image, QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=void setMimeData( QMimeData * src, QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=void setPixmap( const QPixmap & pixmap, QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=void setText( const QString & text, QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=bool supportsFindBuffer() const

$prototypeV2=bool supportsSelection() const

$prototype=QString text ( Mode mode = Clipboard ) const
$internalMethod=|QString|text,text1|QClipboard::Mode=QClipboard::Clipboard

$prototype=QString text ( QString & subtype, Mode mode = Clipboard ) const
%% TODO: implementar
HB_FUNC_STATIC( QCLIPBOARD_TEXT2 )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    RQSTRING( obj->text ( par1, (QClipboard::Mode) hb_parni(2) ) );
  }
}
$addMethod=text2

/*
[1]QString text ( Mode mode = Clipboard ) const
[2]QString text ( QString & subtype, Mode mode = Clipboard ) const
*/

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QClipboard_text1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=text

$beginSignals
$signal=|changed(QClipboard::Mode)
$signal=|dataChanged()
$signal=|findBufferChanged()
$signal=|selectionChanged()
$endSignals

#pragma ENDDUMP
