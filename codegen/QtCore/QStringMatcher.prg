$header

#include "hbclass.ch"


CLASS QStringMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD setPattern
   METHOD setCaseSensitivity
   METHOD indexIn1
   METHOD indexIn2
   METHOD pattern
   METHOD caseSensitivity
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStringMatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStringMatcher()
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW1 )
{
  QStringMatcher * o = new QStringMatcher ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW2 )
{
  int par2 = ISNIL(2)? (int) Qt::CaseSensitive : hb_parni(2);
  QStringMatcher * o = new QStringMatcher ( PQSTRING(1), (Qt::CaseSensitivity) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW3 )
{
  const QChar * par1 = (const QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) Qt::CaseSensitive : hb_parni(3);
  QStringMatcher * o = new QStringMatcher ( par1, PINT(2), (Qt::CaseSensitivity) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QStringMatcher(const QStringMatcher &other)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_NEW4 )
{
  QStringMatcher * o = new QStringMatcher ( *PQSTRINGMATCHER(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QStringMatcher()
//[2]QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//[3]QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//[4]QStringMatcher(const QStringMatcher &other)

HB_FUNC_STATIC( QSTRINGMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSTRINGMATCHER(1) )
  {
    HB_FUNC_EXEC( QSTRINGMATCHER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setPattern(const QString &pattern)
*/
$method=|void|setPattern|const QString &

/*
void setCaseSensitivity(Qt::CaseSensitivity cs)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETCASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCaseSensitivity ( (Qt::CaseSensitivity) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indexIn(const QString &str, int from = 0) const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN1 )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexIn ( PQSTRING(1), OPINT(2,0) ) );
  }
}


/*
int indexIn(const QChar *str, int length, int from = 0) const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN2 )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QChar * par1 = (const QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->indexIn ( par1, PINT(2), OPINT(3,0) ) );
  }
}

/*
QString pattern() const
*/
$method=|QString|pattern|

/*
Qt::CaseSensitivity caseSensitivity() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_CASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->caseSensitivity () );
  }
}

$extraMethods

#pragma ENDDUMP
