$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QMOVIE
REQUEST QPICTURE
REQUEST QPIXMAP
REQUEST QSIZE
#endif

CLASS QLabel INHERIT QFrame

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD buddy
   METHOD hasScaledContents
   METHOD hasSelectedText
   METHOD indent
   METHOD margin
   METHOD movie
   METHOD openExternalLinks
   METHOD picture
   METHOD pixmap
   METHOD selectedText
   METHOD setAlignment
   METHOD setBuddy
   METHOD setIndent
   METHOD setMargin
   METHOD setOpenExternalLinks
   METHOD setScaledContents
   METHOD setSelection
   METHOD setTextFormat
   METHOD setTextInteractionFlags
   METHOD setWordWrap
   METHOD text
   METHOD textFormat
   METHOD textInteractionFlags
   METHOD wordWrap
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD setMovie
   METHOD setNum1
   METHOD setNum2
   METHOD setNum
   METHOD setPicture
   METHOD setPixmap
   METHOD setText

   METHOD onLinkActivated
   METHOD onLinkHovered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLabel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QLABEL_NEW1 )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QLabel * o = new QLabel ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QLABEL_NEW2 )
{
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QLabel * o = new QLabel ( PQSTRING(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QLabel ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QLabel ( const QString & text, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QLABEL_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLABEL_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QLABEL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
QWidget * buddy () const
*/
$method=|QWidget *|buddy|

/*
bool hasScaledContents () const
*/
$method=|bool|hasScaledContents|

/*
bool hasSelectedText () const
*/
$method=|bool|hasSelectedText|

/*
int indent () const
*/
$method=|int|indent|

/*
int margin () const
*/
$method=|int|margin|

/*
QMovie * movie () const
*/
$method=|QMovie *|movie|

/*
bool openExternalLinks () const
*/
$method=|bool|openExternalLinks|

/*
const QPicture * picture () const
*/
$method=|const QPicture *|picture|

/*
const QPixmap * pixmap () const
*/
$method=|const QPixmap *|pixmap|

/*
QString selectedText () const
*/
$method=|QString|selectedText|

/*
void setAlignment ( Qt::Alignment )
*/
$method=|void|setAlignment|Qt::Alignment

/*
void setBuddy ( QWidget * buddy )
*/
$method=|void|setBuddy|QWidget *

/*
void setIndent ( int )
*/
$method=|void|setIndent|int

/*
void setMargin ( int )
*/
$method=|void|setMargin|int

/*
void setOpenExternalLinks ( bool open )
*/
$method=|void|setOpenExternalLinks|bool

/*
void setScaledContents ( bool )
*/
$method=|void|setScaledContents|bool

/*
void setSelection ( int start, int length )
*/
$method=|void|setSelection|int,int

/*
void setTextFormat ( Qt::TextFormat )
*/
$method=|void|setTextFormat|Qt::TextFormat

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
$method=|void|setTextInteractionFlags|Qt::TextInteractionFlags

/*
void setWordWrap ( bool on )
*/
$method=|void|setWordWrap|bool

/*
QString text () const
*/
$method=|QString|text|

/*
Qt::TextFormat textFormat () const
*/
$method=|Qt::TextFormat|textFormat|

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
$method=|Qt::TextInteractionFlags|textInteractionFlags|

/*
bool wordWrap () const
*/
$method=|bool|wordWrap|

/*
virtual int heightForWidth ( int w ) const
*/
$virtualMethod=|int|heightForWidth|int

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
void clear ()
*/
$method=|void|clear|

/*
void setMovie ( QMovie * movie )
*/
$method=|void|setMovie|QMovie *

/*
void setNum ( int num )
*/
$method=|void|setNum,setNum1|int

/*
void setNum ( double num )
*/
$method=|void|setNum,setNum2|double

//[1]void setNum ( int num )
//[2]void setNum ( double num )

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

/*
void setPicture ( const QPicture & picture )
*/
$method=|void|setPicture|const QPicture &

/*
void setPixmap ( const QPixmap & )
*/
$method=|void|setPixmap|const QPixmap &

/*
void setText ( const QString & )
*/
$method=|void|setText|const QString

#pragma ENDDUMP
