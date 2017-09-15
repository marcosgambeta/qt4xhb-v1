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
$constructor=|new1|

/*
QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
$constructor=|new2|const QString &,Qt::CaseSensitivity=Qt::CaseSensitive

/*
QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
$constructor=|new3|const QChar *,int,Qt::CaseSensitivity=Qt::CaseSensitive

/*
QStringMatcher(const QStringMatcher &other)
*/
$constructor=|new4|const QStringMatcher &

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
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

/*
int indexIn(const QString &str, int from = 0) const
*/
$method=|int|indexIn,indexIn1|const QString &,int=0

/*
int indexIn(const QChar *str, int length, int from = 0) const
*/
$method=|int|indexIn,indexIn2|const QChar *,int,int=0

/*
QString pattern() const
*/
$method=|QString|pattern|

/*
Qt::CaseSensitivity caseSensitivity() const
*/
$method=|Qt::CaseSensitivity|caseSensitivity|

$extraMethods

#pragma ENDDUMP
