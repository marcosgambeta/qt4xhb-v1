$header

#include "hbclass.ch"

CLASS QRegExp

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD cap
   METHOD captureCount
   METHOD capturedTexts
   METHOD caseSensitivity
   METHOD errorString
   METHOD exactMatch
   METHOD indexIn
   METHOD isEmpty
   METHOD isMinimal
   METHOD isValid
   METHOD lastIndexIn
   METHOD matchedLength
   METHOD pattern
   METHOD patternSyntax
   METHOD pos
   METHOD setCaseSensitivity
   METHOD setMinimal
   METHOD setPattern
   METHOD setPatternSyntax
   METHOD escape

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QRegExp>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QRegExp ()
*/
HB_FUNC_STATIC( QREGEXP_NEW1 )
{
  QRegExp * o = new QRegExp ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
*/
HB_FUNC_STATIC( QREGEXP_NEW2 )
{
  QRegExp * o = new QRegExp ( PQSTRING(1), ISNIL(2)? Qt::CaseSensitive : (Qt::CaseSensitivity) hb_parni(2), ISNIL(3)? QRegExp::RegExp : (QRegExp::PatternSyntax) hb_parni(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QRegExp ( const QRegExp & rx )
*/
HB_FUNC_STATIC( QREGEXP_NEW3 )
{
  QRegExp * o = new QRegExp ( *PQREGEXP(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QRegExp ()
//[2]QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
//[3]QRegExp ( const QRegExp & rx )

HB_FUNC_STATIC( QREGEXP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QREGEXP_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString cap ( int nth = 0 ) const
*/
$method=|QString|cap|int=0

/*
int captureCount () const
*/
HB_FUNC_STATIC( QREGEXP_CAPTURECOUNT )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->captureCount () );
  }
}


/*
QStringList capturedTexts () const
*/
HB_FUNC_STATIC( QREGEXP_CAPTUREDTEXTS )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->capturedTexts () );
  }
}


/*
Qt::CaseSensitivity caseSensitivity () const
*/
HB_FUNC_STATIC( QREGEXP_CASESENSITIVITY )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->caseSensitivity () );
  }
}

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
bool exactMatch ( const QString & str ) const
*/
$method=|bool|exactMatch|const QString &

/*
int indexIn ( const QString & str, int offset = 0, CaretMode caretMode = CaretAtZero ) const
*/
HB_FUNC_STATIC( QREGEXP_INDEXIN )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexIn ( PQSTRING(1), OPINT(2,0), ISNIL(3)? QRegExp::CaretAtZero : (QRegExp::CaretMode) hb_parni(3) ) );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QREGEXP_ISEMPTY )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isMinimal () const
*/
HB_FUNC_STATIC( QREGEXP_ISMINIMAL )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isMinimal () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QREGEXP_ISVALID )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int lastIndexIn ( const QString & str, int offset = -1, CaretMode caretMode = CaretAtZero ) const
*/
HB_FUNC_STATIC( QREGEXP_LASTINDEXIN )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lastIndexIn ( PQSTRING(1), OPINT(2,-1), ISNIL(3)? QRegExp::CaretAtZero : (QRegExp::CaretMode) hb_parni(3) ) );
  }
}


/*
int matchedLength () const
*/
HB_FUNC_STATIC( QREGEXP_MATCHEDLENGTH )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->matchedLength () );
  }
}

/*
QString pattern () const
*/
$method=|QString|pattern|

/*
PatternSyntax patternSyntax () const
*/
HB_FUNC_STATIC( QREGEXP_PATTERNSYNTAX )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->patternSyntax () );
  }
}


/*
int pos ( int nth = 0 ) const
*/
HB_FUNC_STATIC( QREGEXP_POS )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->pos ( OPINT(1,0) ) );
  }
}


/*
void setCaseSensitivity ( Qt::CaseSensitivity cs )
*/
HB_FUNC_STATIC( QREGEXP_SETCASESENSITIVITY )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCaseSensitivity ( (Qt::CaseSensitivity) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimal ( bool minimal )
*/
HB_FUNC_STATIC( QREGEXP_SETMINIMAL )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMinimal ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPattern ( const QString & pattern )
*/
$method=|void|setPattern|const QString &

/*
void setPatternSyntax ( PatternSyntax syntax )
*/
HB_FUNC_STATIC( QREGEXP_SETPATTERNSYNTAX )
{
  QRegExp * obj = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPatternSyntax ( (QRegExp::PatternSyntax) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString escape ( const QString & str )
*/
$staticMethod=|QString|escape|const QString &

$extraMethods

#pragma ENDDUMP
