$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDialog INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isSizeGripEnabled
   METHOD result
   METHOD setModal
   METHOD setResult
   METHOD setSizeGripEnabled
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD accept
   METHOD done
   METHOD exec
   METHOD open
   METHOD reject

   METHOD onAccepted
   METHOD onFinished
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QDIALOG_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QDialog * o = new QDialog ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QDIALOG_DELETE )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isSizeGripEnabled () const
*/
HB_FUNC_STATIC( QDIALOG_ISSIZEGRIPENABLED )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSizeGripEnabled () );
  }
}

/*
int result () const
*/
HB_FUNC_STATIC( QDIALOG_RESULT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->result () );
  }
}

/*
void setModal ( bool modal )
*/
HB_FUNC_STATIC( QDIALOG_SETMODAL )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setModal ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setResult ( int i )
*/
HB_FUNC_STATIC( QDIALOG_SETRESULT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setResult ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeGripEnabled ( bool )
*/
HB_FUNC_STATIC( QDIALOG_SETSIZEGRIPENABLED )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizeGripEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QDIALOG_MINIMUMSIZEHINT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QDIALOG_SETVISIBLE )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QDIALOG_SIZEHINT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void accept ()
*/
HB_FUNC_STATIC( QDIALOG_ACCEPT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->accept ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void done ( int r )
*/
HB_FUNC_STATIC( QDIALOG_DONE )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->done ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int exec ()
*/
HB_FUNC_STATIC( QDIALOG_EXEC )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->exec () );
  }
}

/*
void open ()
*/
HB_FUNC_STATIC( QDIALOG_OPEN )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void reject ()
*/
HB_FUNC_STATIC( QDIALOG_REJECT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reject ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
