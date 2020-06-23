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

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QMovie>

$prototype=QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

$prototype=QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0,Qt::WindowFlags=0

/*
[1]QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
[2]QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/

HB_FUNC_STATIC( QLABEL_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QLabel_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QLabel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QWidget * buddy() const

$prototypeV2=bool hasScaledContents() const

$prototypeV2=bool hasSelectedText() const

$prototypeV2=int indent() const

$prototypeV2=int margin() const

$prototypeV2=QMovie * movie() const

$prototypeV2=bool openExternalLinks() const

$prototypeV2=const QPicture * picture() const

$prototypeV2=const QPixmap * pixmap() const

$prototypeV2=QString selectedText() const

$prototypeV2=void setAlignment( Qt::Alignment )

$prototypeV2=void setBuddy( QWidget * buddy )

$prototypeV2=void setIndent( int )

$prototypeV2=void setMargin( int )

$prototypeV2=void setOpenExternalLinks( bool open )

$prototypeV2=void setScaledContents( bool )

$prototypeV2=void setSelection( int start, int length )

$prototypeV2=void setTextFormat( Qt::TextFormat )

$prototypeV2=void setTextInteractionFlags( Qt::TextInteractionFlags flags )

$prototypeV2=void setWordWrap( bool on )

$prototypeV2=QString text() const

$prototypeV2=Qt::TextFormat textFormat() const

$prototypeV2=Qt::TextInteractionFlags textInteractionFlags() const

$prototypeV2=bool wordWrap() const

$prototypeV2=virtual int heightForWidth( int w ) const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void clear()

$prototypeV2=void setMovie( QMovie * movie )

$prototype=void setNum ( int num )
$method=|void|setNum,setNum1|int

$prototype=void setNum ( double num )
$method=|void|setNum,setNum2|double

/*
[1]void setNum ( int num )
[2]void setNum ( double num )
*/

%% TODO: reconhecer se é int ou double
HB_FUNC_STATIC( QLABEL_SETNUM )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLABEL_SETNUM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setNum

$prototypeV2=void setPicture( const QPicture & picture )

$prototypeV2=void setPixmap( const QPixmap & )

$prototypeV2=void setText( const QString & )

$beginSignals
$signal=|linkActivated(QString)
$signal=|linkHovered(QString)
$endSignals

#pragma ENDDUMP
