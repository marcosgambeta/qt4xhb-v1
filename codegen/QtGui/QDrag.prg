$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QMIMEDATA
REQUEST QPIXMAP
REQUEST QWIDGET
#endif

CLASS QDrag INHERIT QObject

   METHOD new
   METHOD delete
   METHOD exec1
   METHOD exec2
   METHOD exec
   METHOD hotSpot
   METHOD mimeData
   METHOD pixmap
   METHOD setDragCursor
   METHOD setHotSpot
   METHOD setMimeData
   METHOD setPixmap
   METHOD source
   METHOD target

   METHOD onActionChanged
   METHOD onTargetChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDrag>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QPoint>
#include <QPixmap>

/*
QDrag ( QWidget * dragSource )
*/
HB_FUNC_STATIC( QDRAG_NEW )
{
  QDrag * o = new QDrag ( PQWIDGET(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
*/
$method=|Qt::DropAction|exec,exec1|Qt::DropActions=Qt::MoveAction

/*
Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )
*/
$method=|Qt::DropAction|exec,exec2|Qt::DropActions,Qt::DropAction

//[1]Qt::DropAction exec ( Qt::DropActions supportedActions = Qt::MoveAction )
//[2]Qt::DropAction exec ( Qt::DropActions supportedActions, Qt::DropAction defaultDropAction )

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDRAG_EXEC1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDRAG_EXEC2 );
  }
}

/*
QPoint hotSpot () const
*/
$method=|QPoint|hotSpot|

/*
QMimeData * mimeData () const
*/
$method=|QMimeData *|mimeData|

/*
QPixmap pixmap () const
*/
$method=|QPixmap|pixmap|

/*
void setDragCursor ( const QPixmap & cursor, Qt::DropAction action )
*/
$method=|void|setDragCursor|const QPixmap &,Qt::DropAction

/*
void setHotSpot ( const QPoint & hotspot )
*/
$method=|void|setHotSpot|const QPoint &

/*
void setMimeData ( QMimeData * data )
*/
$method=|void|setMimeData|QMimeData *

/*
void setPixmap ( const QPixmap & pixmap )
*/
$method=|void|setPixmap|const QPixmap &

/*
QWidget * source () const
*/
$method=|QWidget *|source|

/*
QWidget * target () const
*/
$method=|QWidget *|target|

#pragma ENDDUMP
