/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QScriptContextInfo

   DATA pointer
   DATA class_id INIT Class_Id_QScriptContextInfo
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD fileName
   METHOD functionEndLineNumber
   METHOD functionMetaIndex
   METHOD functionName
   METHOD functionParameterNames
   METHOD functionStartLineNumber
   METHOD functionType
   METHOD isNull
   METHOD lineNumber
   METHOD scriptId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QScriptContextInfo
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QScriptContextInfo
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QScriptContextInfo
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QScriptContextInfo
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QScriptContextInfo
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QScriptContextInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QScriptContextInfo>

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
QScriptContextInfo ( const QScriptContext * context )
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW1 )
{
  QScriptContextInfo * o = NULL;
  const QScriptContext * par1 = (const QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QScriptContextInfo ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptContextInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptContextInfo ( const QScriptContextInfo & other )
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW2 )
{
  QScriptContextInfo * o = NULL;
  QScriptContextInfo * par1 = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QScriptContextInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptContextInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QScriptContextInfo ()
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW3 )
{
  QScriptContextInfo * o = NULL;
  o = new QScriptContextInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptContextInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QScriptContextInfo ( const QScriptContext * context )
//[2]QScriptContextInfo ( const QScriptContextInfo & other )
//[3]QScriptContextInfo ()

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQSCRIPTCONTEXT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTCONTEXTINFO(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW2 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_DELETE )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FILENAME )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
int functionEndLineNumber () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONENDLINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->functionEndLineNumber (  ) );
  }
}


/*
int functionMetaIndex () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONMETAINDEX )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->functionMetaIndex (  ) );
  }
}


/*
QString functionName () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONNAME )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->functionName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QStringList functionParameterNames () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONPARAMETERNAMES )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->functionParameterNames (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
int functionStartLineNumber () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONSTARTLINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->functionStartLineNumber (  ) );
  }
}


/*
FunctionType functionType () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_FUNCTIONTYPE )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->functionType (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_ISNULL )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
int lineNumber () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_LINENUMBER )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->lineNumber (  ) );
  }
}


/*
qint64 scriptId () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_SCRIPTID )
{
  QScriptContextInfo * obj = (QScriptContextInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->scriptId (  );
    hb_retni( i );
  }
}





#pragma ENDDUMP
