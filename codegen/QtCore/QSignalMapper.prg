$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QSignalMapper INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setMapping1
   METHOD setMapping2
   METHOD setMapping3
   METHOD setMapping4
   METHOD setMapping
   METHOD removeMappings
   METHOD mapping1
   METHOD mapping2
   METHOD mapping3
   METHOD mapping4
   METHOD mapping
   METHOD map1
   METHOD map2
   METHOD map

   METHOD onMapped1
   METHOD onMapped2
   METHOD onMapped3
   METHOD onMapped4

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSignalMapper>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSignalMapper(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void setMapping(QObject *sender, int id)
*/
$method=|void|setMapping,setMapping1|QObject *,int

/*
void setMapping(QObject *sender, const QString &text)
*/
$method=|void|setMapping,setMapping2|QObject *,const QString &

/*
void setMapping(QObject *sender, QWidget *widget)
*/
$method=|void|setMapping,setMapping3|QObject *,QWidget *

/*
void setMapping(QObject *sender, QObject *object)
*/
$method=|void|setMapping,setMapping4|QObject *,QObject *

//[1]void setMapping(QObject *sender, int id)
//[2]void setMapping(QObject *sender, const QString &text)
//[3]void setMapping(QObject *sender, QWidget *widget)
//[4]void setMapping(QObject *sender, QObject *object)

HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING1 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING2 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING3 );
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_SETMAPPING4 );
  }
}

/*
void removeMappings(QObject *sender)
*/
$method=|void|removeMappings|QObject *

/*
QObject *mapping(int id) const
*/
$method=|QObject *|mapping,mapping1|int

/*
QObject *mapping(const QString &text) const
*/
$method=|QObject *|mapping,mapping2|const QString &

/*
QObject *mapping(QWidget *widget) const
*/
$method=|QObject *|mapping,mapping3|QWidget *

/*
QObject *mapping(QObject *object) const
*/
$method=|QObject *|mapping,mapping4|QObject *

//[1]QObject *mapping(int id) const
//[2]QObject *mapping(const QString &text) const
//[3]QObject *mapping(QWidget *widget) const
//[4]QObject *mapping(QObject *object) const

HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING2 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING3 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAPPING4 );
  }
}

/*
void map()
*/
$method=|void|map,map1|

/*
void map(QObject *sender)
*/
$method=|void|map,map2|QObject *

//[1]void map()
//[2]void map(QObject *sender)

HB_FUNC_STATIC( QSIGNALMAPPER_MAP )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAP1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSIGNALMAPPER_MAP2 );
  }
}

#pragma ENDDUMP
