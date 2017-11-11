$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPROCESSENVIRONMENT
#endif

CLASS QProcessEnvironment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD clear
   METHOD contains
   METHOD remove
   METHOD value
   METHOD toStringList
   METHOD keys
   METHOD insert
   METHOD systemEnvironment

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QProcessEnvironment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QProcessEnvironment()
*/
$internalConstructor=|new1|

/*
QProcessEnvironment(const QProcessEnvironment &other)
*/
$internalConstructor=|new2|const QProcessEnvironment &

//[1]QProcessEnvironment()
//[2]QProcessEnvironment(const QProcessEnvironment &other)

HB_FUNC_STATIC( QPROCESSENVIRONMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QProcessEnvironment_new1();
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    QProcessEnvironment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
void clear()
*/
$method=|void|clear|

/*
bool contains(const QString &name) const
*/
$method=|bool|contains|const QString &

/*
void remove(const QString &name)
*/
$method=|void|remove|const QString &

/*
QString value(const QString &name, const QString &defaultValue = QString()) const
*/
$method=|QString|value|const QString &,const QString &=QString()

/*
QStringList toStringList() const
*/
$method=|QStringList|toStringList|

/*
QStringList keys() const
*/
$method=|QStringList|keys|

/*
void insert(const QString &name, const QString &value)
*/
$internalMethod=|void|insert,insert1|const QString &,const QString &

/*
void insert(const QProcessEnvironment &e)
*/
$internalMethod=|void|insert,insert2|const QProcessEnvironment &

//[1]void insert(const QString &name, const QString &value)
//[2]void insert(const QProcessEnvironment &e)

HB_FUNC_STATIC( QPROCESSENVIRONMENT_INSERT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QProcessEnvironment_insert1();
  }
  else if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
  {
    QProcessEnvironment_insert2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QProcessEnvironment systemEnvironment()
*/
$staticMethod=|QProcessEnvironment|systemEnvironment|

$extraMethods

#pragma ENDDUMP
