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

/*
virtual QList<QAction *> actions ()
*/
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
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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

/*
virtual bool filterEvent ( const QEvent * event )
*/
$virtualMethod=|bool|filterEvent|const QEvent *

/*
QWidget * focusWidget () const
*/
$method=|QWidget *|focusWidget|

/*
virtual QFont font () const
*/
$virtualMethod=|QFont|font|

/*
virtual QString identifierName () = 0
*/
$virtualMethod=|QString|identifierName|

/*
virtual bool isComposing () const = 0
*/
$virtualMethod=|bool|isComposing|

/*
virtual QString language () = 0
*/
$virtualMethod=|QString|language|

/*
virtual void mouseHandler ( int x, QMouseEvent * event )
*/
$virtualMethod=|void|mouseHandler|int,QMouseEvent *

/*
virtual void reset () = 0
*/
$virtualMethod=|void|reset|

/*
void sendEvent ( const QInputMethodEvent & event )
*/
$method=|void|sendEvent|const QInputMethodEvent &

/*
virtual void setFocusWidget ( QWidget * widget )
*/
$virtualMethod=|void|setFocusWidget|QWidget *

/*
QTextFormat standardFormat ( StandardFormat s ) const
*/
$method=|QTextFormat|standardFormat|QInputContext::StandardFormat

/*
virtual void update ()
*/
$virtualMethod=|void|update|

/*
virtual void widgetDestroyed ( QWidget * widget )
*/
$virtualMethod=|void|widgetDestroyed|QWidget *

#pragma ENDDUMP
