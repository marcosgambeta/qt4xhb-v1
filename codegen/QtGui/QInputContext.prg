$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QWIDGET
REQUEST QFONT
REQUEST QTEXTFORMAT
#endif

CLASS QInputContext INHERIT QObject

   METHOD delete
   METHOD actions
   METHOD filterEvent
   METHOD focusWidget
   METHOD font
   METHOD identifierName
   METHOD isComposing
   METHOD language
   METHOD mouseHandler
   METHOD reset
   METHOD sendEvent
   METHOD setFocusWidget
   METHOD standardFormat
   METHOD update
   METHOD widgetDestroyed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QInputContext>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextFormat>

$deleteMethod

$prototype=virtual QList<QAction *> actions ()
HB_FUNC_STATIC( QINPUTCONTEXT_ACTIONS )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAction *> list = obj->actions ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QACTION" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAction *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=virtual bool filterEvent ( const QEvent * event )
$virtualMethod=|bool|filterEvent|const QEvent *

$prototype=QWidget * focusWidget () const
$method=|QWidget *|focusWidget|

$prototype=virtual QFont font () const
$virtualMethod=|QFont|font|

$prototype=virtual QString identifierName () = 0
$virtualMethod=|QString|identifierName|

$prototype=virtual bool isComposing () const = 0
$virtualMethod=|bool|isComposing|

$prototype=virtual QString language () = 0
$virtualMethod=|QString|language|

$prototype=virtual void mouseHandler ( int x, QMouseEvent * event )
$virtualMethod=|void|mouseHandler|int,QMouseEvent *

$prototype=virtual void reset () = 0
$virtualMethod=|void|reset|

$prototype=void sendEvent ( const QInputMethodEvent & event )
$method=|void|sendEvent|const QInputMethodEvent &

$prototype=virtual void setFocusWidget ( QWidget * widget )
$virtualMethod=|void|setFocusWidget|QWidget *

$prototype=QTextFormat standardFormat ( StandardFormat s ) const
$method=|QTextFormat|standardFormat|QInputContext::StandardFormat

$prototype=virtual void update ()
$virtualMethod=|void|update|

$prototype=virtual void widgetDestroyed ( QWidget * widget )
$virtualMethod=|void|widgetDestroyed|QWidget *

#pragma ENDDUMP
