/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QDomCharacterData INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD appendData
   METHOD data
   METHOD deleteData
   METHOD insertData
   METHOD length
   METHOD nodeType
   METHOD replaceData
   METHOD setData
   METHOD substringData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomCharacterData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomCharacterData>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomCharacterData ()
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW1 )
{
  QDomCharacterData * o = new QDomCharacterData ();
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QDomCharacterData ( const QDomCharacterData & x )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW2 )
{
  QDomCharacterData * o = new QDomCharacterData ();
  _qt4xhb_storePointerAndFlag( o, true );
}

//[1]QDomCharacterData ()
//[2]QDomCharacterData ( const QDomCharacterData & x )

HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCHARACTERDATA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCHARACTERDATA(1) )
  {
    HB_FUNC_EXEC( QDOMCHARACTERDATA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void appendData ( const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_APPENDDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->appendData ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString data () const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_DATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->data () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void deleteData ( unsigned long offset, unsigned long count )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_DELETEDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->deleteData ( PUNSIGNEDLONG(1), PUNSIGNEDLONG(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertData ( unsigned long offset, const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_INSERTDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
      obj->insertData ( PUNSIGNEDLONG(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
uint length () const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_LENGTH )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RUINT( obj->length () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_NODETYPE )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->nodeType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void replaceData ( unsigned long offset, unsigned long count, const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_REPLACEDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
    {
      obj->replaceData ( PUNSIGNEDLONG(1), PUNSIGNEDLONG(2), PQSTRING(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setData ( const QString & v )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_SETDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setData ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString substringData ( unsigned long offset, unsigned long count )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_SUBSTRINGDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      RQSTRING( obj->substringData ( PUNSIGNEDLONG(1), PUNSIGNEDLONG(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
