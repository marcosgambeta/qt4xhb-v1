/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QUNDOGROUP
REQUEST QUNDOSTACK
#endif

CLASS QUndoView INHERIT QWidget

   DATA class_id INIT Class_Id_QUndoView
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD cleanIcon
   METHOD emptyLabel
   METHOD group
   METHOD setCleanIcon
   METHOD setEmptyLabel
   METHOD stack
   METHOD setGroup
   METHOD setStack
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUndoView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QUndoView>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QUndoView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOVIEW_NEW1 )
{
  QUndoView * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUndoView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUndoView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOVIEW_NEW2 )
{
  QUndoView * o = NULL;
  QUndoStack * par1 = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUndoView ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUndoView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QUndoView ( QUndoGroup * group, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOVIEW_NEW3 )
{
  QUndoView * o = NULL;
  QUndoGroup * par1 = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QUndoView ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUndoView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QUndoView ( QWidget * parent = 0 )
//[2]QUndoView ( QUndoStack * stack, QWidget * parent = 0 )
//[3]QUndoView ( QUndoGroup * group, QWidget * parent = 0 )

HB_FUNC_STATIC( QUNDOVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QUNDOVIEW_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQUNDOSTACK(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QUNDOVIEW_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQUNDOGROUP(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QUNDOVIEW_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUNDOVIEW_DELETE )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QIcon cleanIcon () const
*/
HB_FUNC_STATIC( QUNDOVIEW_CLEANICON )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->cleanIcon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
QString emptyLabel () const
*/
HB_FUNC_STATIC( QUNDOVIEW_EMPTYLABEL )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->emptyLabel (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QUndoGroup * group () const
*/
HB_FUNC_STATIC( QUNDOVIEW_GROUP )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUndoGroup * ptr = obj->group (  );
    _qt4xhb_createReturnClass ( ptr, "QUNDOGROUP" );
  }
}


/*
void setCleanIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETCLEANICON )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    obj->setCleanIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEmptyLabel ( const QString & label )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETEMPTYLABEL )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEmptyLabel ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUndoStack * stack () const
*/
HB_FUNC_STATIC( QUNDOVIEW_STACK )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUndoStack * ptr = obj->stack (  );
    _qt4xhb_createReturnClass ( ptr, "QUNDOSTACK" );
  }
}


/*
void setGroup ( QUndoGroup * group )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETGROUP )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUndoGroup * par1 = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGroup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStack ( QUndoStack * stack )
*/
HB_FUNC_STATIC( QUNDOVIEW_SETSTACK )
{
  QUndoView * obj = (QUndoView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUndoStack * par1 = (QUndoStack *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setStack ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
