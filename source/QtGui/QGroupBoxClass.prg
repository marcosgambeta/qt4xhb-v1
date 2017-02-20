/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE

CLASS QGroupBox INHERIT QWidget

   DATA class_id INIT Class_Id_QGroupBox
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD alignment
   METHOD isCheckable
   METHOD isChecked
   METHOD isFlat
   METHOD setAlignment
   METHOD setCheckable
   METHOD setFlat
   METHOD setTitle
   METHOD title
   METHOD minimumSizeHint
   METHOD setChecked
   METHOD onClicked
   METHOD onToggled
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGroupBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGroupBox>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QGroupBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGROUPBOX_NEW1 )
{
  QGroupBox * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGroupBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGroupBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGroupBox ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGROUPBOX_NEW2 )
{
  QGroupBox * o = NULL;
  QString par1 = hb_parc(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGroupBox ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGroupBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QGroupBox ( QWidget * parent = 0 )
//[2]QGroupBox ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QGROUPBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGROUPBOX_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGROUPBOX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QGROUPBOX_ALIGNMENT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment (  ) );
  }
}


/*
bool isCheckable () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISCHECKABLE )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isCheckable (  ) );
  }
}


/*
bool isChecked () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISCHECKED )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isChecked (  ) );
  }
}


/*
bool isFlat () const
*/
HB_FUNC_STATIC( QGROUPBOX_ISFLAT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFlat (  ) );
  }
}


/*
void setAlignment ( int alignment )
*/
HB_FUNC_STATIC( QGROUPBOX_SETALIGNMENT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCheckable ( bool checkable )
*/
HB_FUNC_STATIC( QGROUPBOX_SETCHECKABLE )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setCheckable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlat ( bool flat )
*/
HB_FUNC_STATIC( QGROUPBOX_SETFLAT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFlat ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QGROUPBOX_SETTITLE )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString title () const
*/
HB_FUNC_STATIC( QGROUPBOX_TITLE )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->title (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QGROUPBOX_MINIMUMSIZEHINT )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setChecked ( bool checked )
*/
HB_FUNC_STATIC( QGROUPBOX_SETCHECKED )
{
  QGroupBox * obj = (QGroupBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setChecked ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
