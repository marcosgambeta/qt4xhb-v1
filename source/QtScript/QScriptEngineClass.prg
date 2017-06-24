/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTENGINEAGENT
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTSYNTAXCHECKRESULT
#endif

CLASS QScriptEngine INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD abortEvaluation
   METHOD agent
   METHOD availableExtensions
   METHOD clearExceptions
   METHOD collectGarbage
   METHOD currentContext
   METHOD defaultPrototype
   METHOD evaluate1
   METHOD evaluate2
   METHOD evaluate
   METHOD globalObject
   METHOD hasUncaughtException
   METHOD importExtension
   METHOD importedExtensions
   METHOD installTranslatorFunctions
   METHOD isEvaluating
   METHOD newArray
   METHOD newRegExp1
   METHOD newRegExp2
   METHOD newRegExp
   METHOD newVariant1
   METHOD newVariant2
   METHOD newVariant
   METHOD nullValue
   METHOD popContext
   METHOD processEventsInterval
   METHOD pushContext
   METHOD reportAdditionalMemoryCost
   METHOD setAgent
   METHOD setDefaultPrototype
   METHOD setGlobalObject
   METHOD setProcessEventsInterval
   METHOD toObject
   METHOD toStringHandle
   METHOD uncaughtException
   METHOD uncaughtExceptionBacktrace
   METHOD uncaughtExceptionLineNumber
   METHOD undefinedValue
   METHOD checkSyntax
   METHOD onSignalHandlerException
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QScriptEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QScriptEngine ()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEW1 )
{
  QScriptEngine * o = new QScriptEngine ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptEngine ( QObject * parent )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEW2 )
{
  QScriptEngine * o = new QScriptEngine ( PQOBJECT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QScriptEngine ()
//[2]QScriptEngine ( QObject * parent )

HB_FUNC_STATIC( QSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTENGINE_DELETE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void abortEvaluation ( const QScriptValue & result = QScriptValue() )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ABORTEVALUATION )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue par1 = ISNIL(1)? QScriptValue() : *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->abortEvaluation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptEngineAgent * agent () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_AGENT )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngineAgent * ptr = obj->agent ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINEAGENT" );
  }
}


/*
QStringList availableExtensions () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_AVAILABLEEXTENSIONS )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->availableExtensions ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void clearExceptions ()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CLEAREXCEPTIONS )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearExceptions ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void collectGarbage ()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_COLLECTGARBAGE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->collectGarbage ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptContext * currentContext () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CURRENTCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptContext * ptr = obj->currentContext ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT" );
  }
}


/*
QScriptValue defaultPrototype ( int metaTypeId ) const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_DEFAULTPROTOTYPE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->defaultPrototype ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue evaluate ( const QString & program, const QString & fileName = QString(), int lineNumber = 1 )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE1 )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->evaluate ( PQSTRING(1), OPQSTRING(2,QString()), OPINT(3,1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue evaluate ( const QScriptProgram & program )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE2 )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->evaluate ( *PQSCRIPTPROGRAM(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue evaluate ( const QString & program, const QString & fileName = QString(), int lineNumber = 1 )
//[2]QScriptValue evaluate ( const QScriptProgram & program )

HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNUM(3)) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_EVALUATE1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_EVALUATE2 );
  }
}


/*
QScriptValue globalObject () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_GLOBALOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->globalObject () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
bool hasUncaughtException () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_HASUNCAUGHTEXCEPTION )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasUncaughtException () );
  }
}


/*
QScriptValue importExtension ( const QString & extension )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_IMPORTEXTENSION )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->importExtension ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QStringList importedExtensions () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_IMPORTEDEXTENSIONS )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->importedExtensions ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void installTranslatorFunctions ( const QScriptValue & object = QScriptValue() )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_INSTALLTRANSLATORFUNCTIONS )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue par1 = ISNIL(1)? QScriptValue() : *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->installTranslatorFunctions ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEvaluating () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_ISEVALUATING )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEvaluating () );
  }
}


/*
QScriptValue newArray ( uint length = 0 )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWARRAY )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->newArray ( (uint) ISNIL(1)? 0 : hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}











/*
QScriptValue newRegExp ( const QRegExp & regexp )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP1 )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->newRegExp ( *PQREGEXP(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue newRegExp ( const QString & pattern, const QString & flags )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP2 )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->newRegExp ( PQSTRING(1), PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue newRegExp ( const QRegExp & regexp )
//[2]QScriptValue newRegExp ( const QString & pattern, const QString & flags )

HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWREGEXP1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWREGEXP2 );
  }
}

/*
QScriptValue newVariant ( const QVariant & value )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT1 )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->newVariant ( *PQVARIANT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue newVariant ( const QScriptValue & object, const QVariant & value )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT2 )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->newVariant ( *PQSCRIPTVALUE(1), *PQVARIANT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


//[1]QScriptValue newVariant ( const QVariant & value )
//[2]QScriptValue newVariant ( const QScriptValue & object, const QVariant & value )

HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWVARIANT1 );
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWVARIANT2 );
  }
}

/*
QScriptValue nullValue ()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NULLVALUE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->nullValue () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
void popContext ()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_POPCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->popContext ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int processEventsInterval () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_PROCESSEVENTSINTERVAL )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->processEventsInterval () );
  }
}


/*
QScriptContext * pushContext ()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_PUSHCONTEXT )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptContext * ptr = obj->pushContext ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT" );
  }
}


/*
void reportAdditionalMemoryCost ( int size )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_REPORTADDITIONALMEMORYCOST )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reportAdditionalMemoryCost ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setAgent ( QScriptEngineAgent * agent )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETAGENT )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngineAgent * par1 = (QScriptEngineAgent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setAgent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultPrototype ( int metaTypeId, const QScriptValue & prototype )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETDEFAULTPROTOTYPE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDefaultPrototype ( PINT(1), *PQSCRIPTVALUE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGlobalObject ( const QScriptValue & object )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETGLOBALOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGlobalObject ( *PQSCRIPTVALUE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProcessEventsInterval ( int interval )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_SETPROCESSEVENTSINTERVAL )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setProcessEventsInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptValue toObject ( const QScriptValue & value )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_TOOBJECT )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->toObject ( *PQSCRIPTVALUE(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}



/*
QScriptString toStringHandle ( const QString & str )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_TOSTRINGHANDLE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptString * ptr = new QScriptString( obj->toStringHandle ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTSTRING" );
  }
}


/*
QScriptValue uncaughtException () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTION )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->uncaughtException () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QStringList uncaughtExceptionBacktrace () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTIONBACKTRACE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->uncaughtExceptionBacktrace ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
int uncaughtExceptionLineNumber () const
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNCAUGHTEXCEPTIONLINENUMBER )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->uncaughtExceptionLineNumber () );
  }
}


/*
QScriptValue undefinedValue ()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_UNDEFINEDVALUE )
{
  QScriptEngine * obj = (QScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->undefinedValue () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}



/*
QScriptSyntaxCheckResult checkSyntax ( const QString & program )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_CHECKSYNTAX )
{
  QScriptSyntaxCheckResult * ptr = new QScriptSyntaxCheckResult( QScriptEngine::checkSyntax ( PQSTRING(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QSCRIPTSYNTAXCHECKRESULT" );
}





#pragma ENDDUMP
