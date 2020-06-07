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

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=QWidget * buddy () const
$method=|QWidget *|buddy|

$prototypeV2=bool hasScaledContents() const

$prototypeV2=bool hasSelectedText() const

$prototypeV2=int indent() const

$prototypeV2=int margin() const

$prototype=QMovie * movie () const
$method=|QMovie *|movie|

$prototypeV2=bool openExternalLinks() const

$prototype=const QPicture * picture () const
$method=|const QPicture *|picture|

$prototype=const QPixmap * pixmap () const
$method=|const QPixmap *|pixmap|

$prototypeV2=QString selectedText() const

$prototype=void setAlignment ( Qt::Alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setBuddy ( QWidget * buddy )
$method=|void|setBuddy|QWidget *

$prototype=void setIndent ( int )
$method=|void|setIndent|int

$prototype=void setMargin ( int )
$method=|void|setMargin|int

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setScaledContents ( bool )
$method=|void|setScaledContents|bool

$prototype=void setSelection ( int start, int length )
$method=|void|setSelection|int,int

$prototype=void setTextFormat ( Qt::TextFormat )
$method=|void|setTextFormat|Qt::TextFormat

$prototype=void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

$prototype=void setWordWrap ( bool on )
$method=|void|setWordWrap|bool

$prototypeV2=QString text() const

$prototype=Qt::TextFormat textFormat () const
$method=|Qt::TextFormat|textFormat|

$prototype=Qt::TextInteractionFlags textInteractionFlags () const
$method=|Qt::TextInteractionFlags|textInteractionFlags|

$prototypeV2=bool wordWrap() const

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void clear ()
$method=|void|clear|

$prototype=void setMovie ( QMovie * movie )
$method=|void|setMovie|QMovie *

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

$prototype=void setPicture ( const QPicture & picture )
$method=|void|setPicture|const QPicture &

$prototype=void setPixmap ( const QPixmap & )
$method=|void|setPixmap|const QPixmap &

$prototype=void setText ( const QString & )
$method=|void|setText|const QString

$beginSignals
$signal=|linkActivated(QString)
$signal=|linkHovered(QString)
$endSignals

#pragma ENDDUMP
