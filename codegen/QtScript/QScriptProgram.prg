$header

#include "hbclass.ch"


CLASS QScriptProgram

   DATA pointer
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

$destructor

#pragma BEGINDUMP

#include <QScriptProgram>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScriptProgram ()
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW1 )
{
  QScriptProgram * o = new QScriptProgram ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptProgram ( const QString & sourceCode, const QString fileName = QString(), int firstLineNumber = 1 )
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW2 )
{
  QScriptProgram * o = new QScriptProgram ( PQSTRING(1), OPQSTRING(2,QString()), OPINT(3,1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptProgram ( const QScriptProgram & other )
*/
HB_FUNC_STATIC( QSCRIPTPROGRAM_NEW3 )
{
  QScriptProgram * o = new QScriptProgram ( *PQSCRIPTPROGRAM(1) );
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
    RQSTRING( obj->fileName () );
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
    RINT( obj->firstLineNumber () );
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
    RBOOL( obj->isNull () );
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
    RQSTRING( obj->sourceCode () );
  }
}

$extraMethods

#pragma ENDDUMP
