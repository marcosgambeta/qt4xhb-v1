/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL

CLASS QSourceLocation

   DATA pointer
   DATA class_id INIT Class_Id_QSourceLocation
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD column
   METHOD isNull
   METHOD line
   METHOD setColumn
   METHOD setLine
   METHOD setUri
   METHOD uri
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSourceLocation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSourceLocation>

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
QSourceLocation ()
*/
HB_FUNC_STATIC( QSOURCELOCATION_NEW1 )
{
  QSourceLocation * o = NULL;
  o = new QSourceLocation (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSourceLocation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSourceLocation ( const QSourceLocation & other )
*/
HB_FUNC_STATIC( QSOURCELOCATION_NEW2 )
{
  QSourceLocation * o = NULL;
  QSourceLocation * par1 = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSourceLocation ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSourceLocation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QSourceLocation ( const QUrl & u, int l = -1, int c = -1 )
*/
HB_FUNC_STATIC( QSOURCELOCATION_NEW3 )
{
  QSourceLocation * o = NULL;
  QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? -1 : hb_parni(2);
  int par3 = ISNIL(3)? -1 : hb_parni(3);
  o = new QSourceLocation ( *par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSourceLocation *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QSourceLocation ()
//[2]QSourceLocation ( const QSourceLocation & other )
//[3]QSourceLocation ( const QUrl & u, int l = -1, int c = -1 )

HB_FUNC_STATIC( QSOURCELOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSOURCELOCATION(1) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISQURL(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSOURCELOCATION_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSOURCELOCATION_DELETE )
{
  QSourceLocation * obj = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qint64 column () const
*/
HB_FUNC_STATIC( QSOURCELOCATION_COLUMN )
{
  QSourceLocation * obj = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->column (  );
    hb_retni( i );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSOURCELOCATION_ISNULL )
{
  QSourceLocation * obj = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
qint64 line () const
*/
HB_FUNC_STATIC( QSOURCELOCATION_LINE )
{
  QSourceLocation * obj = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->line (  );
    hb_retni( i );
  }
}


/*
void setColumn ( qint64 newColumn )
*/
HB_FUNC_STATIC( QSOURCELOCATION_SETCOLUMN )
{
  QSourceLocation * obj = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLine ( qint64 newLine )
*/
HB_FUNC_STATIC( QSOURCELOCATION_SETLINE )
{
  QSourceLocation * obj = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setLine ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUri ( const QUrl & newUri )
*/
HB_FUNC_STATIC( QSOURCELOCATION_SETURI )
{
  QSourceLocation * obj = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setUri ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl uri () const
*/
HB_FUNC_STATIC( QSOURCELOCATION_URI )
{
  QSourceLocation * obj = (QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->uri (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


HB_FUNC_STATIC( QSOURCELOCATION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSOURCELOCATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSOURCELOCATION_NEWFROM );
}

HB_FUNC_STATIC( QSOURCELOCATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSOURCELOCATION_NEWFROM );
}

HB_FUNC_STATIC( QSOURCELOCATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSOURCELOCATION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}



#pragma ENDDUMP
