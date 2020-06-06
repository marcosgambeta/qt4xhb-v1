%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QProcessEnvironment()
$internalConstructor=|new1|

$prototype=QProcessEnvironment(const QProcessEnvironment &other)
$internalConstructor=|new2|const QProcessEnvironment &

/*
[1]QProcessEnvironment()
[2]QProcessEnvironment(const QProcessEnvironment &other)
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=bool isEmpty() const

$prototype=void clear()
$method=|void|clear|

$prototype=bool contains(const QString &name) const
$method=|bool|contains|const QString &

$prototype=void remove(const QString &name)
$method=|void|remove|const QString &

$prototype=QString value(const QString &name, const QString &defaultValue = QString()) const
$method=|QString|value|const QString &,const QString &=QString()

$prototype=QStringList toStringList() const
$method=|QStringList|toStringList|

$prototype=QStringList keys() const
$method=|QStringList|keys|

$prototype=void insert(const QString &name, const QString &value)
$internalMethod=|void|insert,insert1|const QString &,const QString &

$prototype=void insert(const QProcessEnvironment &e)
$internalMethod=|void|insert,insert2|const QProcessEnvironment &

/*
[1]void insert(const QString &name, const QString &value)
[2]void insert(const QProcessEnvironment &e)
*/

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
$addMethod=insert

$prototype=static QProcessEnvironment systemEnvironment()
$staticMethod=|QProcessEnvironment|systemEnvironment|

$extraMethods

#pragma ENDDUMP
