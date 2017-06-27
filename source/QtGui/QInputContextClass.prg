/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QWIDGET
REQUEST QFONT
REQUEST QTEXTFORMAT
#endif

CLASS QInputContext INHERIT QObject

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QInputContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QInputContext>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextFormat>


HB_FUNC_STATIC( QINPUTCONTEXT_DELETE )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QList<QAction *> actions ()
*/
HB_FUNC_STATIC( QINPUTCONTEXT_ACTIONS )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QAction *> list = obj->actions ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QACTION" );
    #else
    pDynSym = hb_dynsymFindName( "QACTION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
HB_FUNC_STATIC( QINPUTCONTEXT_FILTEREVENT )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QEvent * par1 = (const QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->filterEvent ( par1 ) );
  }
}


/*
QWidget * focusWidget () const
*/
HB_FUNC_STATIC( QINPUTCONTEXT_FOCUSWIDGET )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->focusWidget ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QFont font () const
*/
HB_FUNC_STATIC( QINPUTCONTEXT_FONT )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
virtual QString identifierName () = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXT_IDENTIFIERNAME )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->identifierName () );
  }
}


/*
virtual bool isComposing () const = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXT_ISCOMPOSING )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isComposing () );
  }
}


/*
virtual QString language () = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXT_LANGUAGE )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->language () );
  }
}


/*
virtual void mouseHandler ( int x, QMouseEvent * event )
*/
HB_FUNC_STATIC( QINPUTCONTEXT_MOUSEHANDLER )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMouseEvent * par2 = (QMouseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->mouseHandler ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reset () = 0
*/
HB_FUNC_STATIC( QINPUTCONTEXT_RESET )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sendEvent ( const QInputMethodEvent & event )
*/
HB_FUNC_STATIC( QINPUTCONTEXT_SENDEVENT )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->sendEvent ( *PQINPUTMETHODEVENT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFocusWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QINPUTCONTEXT_SETFOCUSWIDGET )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFocusWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextFormat standardFormat ( StandardFormat s ) const
*/
HB_FUNC_STATIC( QINPUTCONTEXT_STANDARDFORMAT )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextFormat * ptr = new QTextFormat( obj->standardFormat ( (QInputContext::StandardFormat) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTFORMAT" );
  }
}



/*
virtual void update ()
*/
HB_FUNC_STATIC( QINPUTCONTEXT_UPDATE )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->update ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void widgetDestroyed ( QWidget * widget )
*/
HB_FUNC_STATIC( QINPUTCONTEXT_WIDGETDESTROYED )
{
  QInputContext * obj = (QInputContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->widgetDestroyed ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
