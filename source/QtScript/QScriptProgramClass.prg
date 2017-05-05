/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QScriptProgram

   DATA pointer
   DATA class_id INIT Class_Id_QScriptProgram
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD fileName
   METHOD firstLineNumber
   METHOD isNull
   METHOD sourceCode
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptProgram
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QScriptProgram>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QScriptProgram ()
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW1 )
{
  QScriptProgram * o = NULL;
  o = new QScriptProgram (  );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptProgram ( const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1 )
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW2 )
{
  QScriptProgram * o = NULL;
  QString par2 = ISNIL(2)? QString() : hb_parc(2);
  o = new QScriptProgram ( PQSTRING(1), par2, ISNIL(3)? 1 : hb_parni(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptProgram ( const QScriptProgram & other )
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW3 )
{
  QScriptProgram * o = NULL;
  QScriptProgram * par1 = (QScriptProgram *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QScriptProgram ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QScriptProgram ()
//[2]QScriptProgram ( const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1 )
//[3]QScriptProgram ( const QScriptProgram & other )

HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTPROGRAM_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSCRIPTPROGRAM_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTPROGRAM_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTPROGRAM_DELETE )
{
  QScriptProgram * obj = (QScriptProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString fileName () const
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_FILENAME )
{
  QScriptProgram * obj = (QScriptProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int firstLineNumber () const
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_FIRSTLINENUMBER )
{
  QScriptProgram * obj = (QScriptProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->firstLineNumber (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_ISNULL )
{
  QScriptProgram * obj = (QScriptProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QString sourceCode () const
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_SOURCECODE )
{
  QScriptProgram * obj = (QScriptProgram *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->sourceCode (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


HB_FUNC_STATIC( QSCRIPTPROGRAM_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTPROGRAM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTPROGRAM_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTPROGRAM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTPROGRAM_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTPROGRAM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTPROGRAM_SETSELFDESTRUCTION )
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
