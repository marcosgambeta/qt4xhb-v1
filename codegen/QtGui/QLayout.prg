$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMARGINS
REQUEST QRECT
REQUEST QLAYOUTITEM
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QLAYOUT
#endif

CLASS QLayout INHERIT QObject,QLayoutItem

   METHOD activate
   METHOD addItem
   METHOD addWidget
   METHOD contentsMargins
   METHOD contentsRect
   METHOD count
   METHOD expandingDirections
   METHOD getContentsMargins
   METHOD indexOf
   METHOD isEnabled
   METHOD itemAt
   METHOD maximumSize
   METHOD menuBar
   METHOD minimumSize
   METHOD parentWidget
   METHOD removeItem
   METHOD removeWidget
   METHOD setAlignment1
   METHOD setAlignment2
   METHOD setAlignment3
   METHOD setAlignment
   METHOD setContentsMargins1
   METHOD setContentsMargins2
   METHOD setContentsMargins
   METHOD setEnabled
   METHOD setMenuBar
   METHOD setSizeConstraint
   METHOD setSpacing
   METHOD sizeConstraint
   METHOD spacing
   METHOD takeAt
   METHOD update
   METHOD geometry
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD setGeometry
   METHOD closestAcceptableSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

%%//[1]QLayout ( QWidget * parent )
%%//[2]QLayout ()

%%// HB_FUNC_STATIC( QLAYOUT_NEW )
%%// {
%%//   if( ISNUMPAR(1) && ISQWIDGET(1) )
%%//   {
%%//     HB_FUNC_EXEC( QLAYOUT_NEW1 );
%%//   }
%%//   else if( ISNUMPAR(0) )
%%//   {
%%//     HB_FUNC_EXEC( QLAYOUT_NEW2 );
%%//   }
%%//  else
%%//  {
%%//    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%//  }
%%// }

/*
bool activate ()
*/
$method=|bool|activate|

/*
virtual void addItem ( QLayoutItem * item ) = 0
*/
$virtualMethod=|void|addItem|QLayoutItem *

/*
void addWidget ( QWidget * w )
*/
$method=|void|addWidget|QWidget *

/*
QMargins contentsMargins () const
*/
$method=|QMargins|contentsMargins|

/*
QRect contentsRect () const
*/
$method=|QRect|contentsRect|

/*
virtual int count () const = 0
*/
$virtualMethod=|int|count|

/*
virtual Qt::Orientations expandingDirections () const
*/
$virtualMethod=|Qt::Orientations|expandingDirections|

/*
void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
*/
$method=|void|getContentsMargins|int *,int *,int *,int *

/*
virtual int indexOf ( QWidget * widget ) const
*/
$virtualMethod=|int|indexOf|QWidget *

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
virtual QLayoutItem * itemAt ( int index ) const = 0
*/
$virtualMethod=|QLayoutItem *|itemAt|int

/*
virtual QSize maximumSize () const
*/
$virtualMethod=|QSize|maximumSize|

/*
QWidget * menuBar () const
*/
$method=|QWidget *|menuBar|

/*
virtual QSize minimumSize () const
*/
$virtualMethod=|QSize|minimumSize|

/*
QWidget * parentWidget () const
*/
$method=|QWidget *|parentWidget|

/*
void removeItem ( QLayoutItem * item )
*/
$method=|void|removeItem|QLayoutItem *

/*
void removeWidget ( QWidget * widget )
*/
$method=|void|removeWidget|QWidget *

/*
bool setAlignment ( QWidget * w, Qt::Alignment alignment )
*/
$method=|bool|setAlignment,setAlignment1|QWidget *,Qt::Alignment

/*
void setAlignment ( Qt::Alignment alignment )
*/
$method=|void|setAlignment,setAlignment2|Qt::Alignment

/*
bool setAlignment ( QLayout * l, Qt::Alignment alignment )
*/
$method=|bool|setAlignment,setAlignment3|QLayout *,Qt::Alignment

//[1]bool setAlignment ( QWidget * w, Qt::Alignment alignment )
//[2]void setAlignment ( Qt::Alignment alignment )
//[3]bool setAlignment ( QLayout * l, Qt::Alignment alignment )

HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT2 );
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETALIGNMENT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
$method=|void|setContentsMargins,setContentsMargins1|int,int,int,int

/*
void setContentsMargins ( const QMargins & margins )
*/
$method=|void|setContentsMargins,setContentsMargins2|const QMargins &

//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETCONTENTSMARGINS1 );
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    HB_FUNC_EXEC( QLAYOUT_SETCONTENTSMARGINS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEnabled ( bool enable )
*/
$method=|void|setEnabled|bool

/*
void setMenuBar ( QWidget * widget )
*/
$method=|void|setMenuBar|QWidget *

/*
void setSizeConstraint ( SizeConstraint )
*/
$method=|void|setSizeConstraint|QLayout::SizeConstraint

/*
void setSpacing ( int )
*/
$method=|void|setSpacing|int

/*
SizeConstraint sizeConstraint () const
*/
$method=|QLayout::SizeConstraint|sizeConstraint|

/*
int spacing () const
*/
$method=|int|spacing|

/*
virtual QLayoutItem * takeAt ( int index ) = 0
*/
$virtualMethod=|QLayoutItem *|takeAt|int

/*
void update ()
*/
$method=|void|update|

/*
virtual QRect geometry () const
*/
$virtualMethod=|QRect|geometry|

/*
virtual void invalidate ()
*/
$virtualMethod=|void|invalidate|

/*
virtual bool isEmpty () const
*/
$virtualMethod=|bool|isEmpty|

/*
virtual QLayout * layout ()
*/
$virtualMethod=|QLayout *|layout|

/*
virtual void setGeometry ( const QRect & r )
*/
$virtualMethod=|void|setGeometry|const QRect &

/*
static QSize closestAcceptableSize ( const QWidget * widget, const QSize & size )
*/
$staticMethod=|QSize|closestAcceptableSize|const QWidget *,const QSize &

#pragma ENDDUMP
