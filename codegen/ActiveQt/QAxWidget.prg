$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAXAGGREGATED
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QAXOBJECT
#endif

CLASS QAxWidget INHERIT QWidget,QAxBase

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD doVerb
   METHOD clear
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD asVariant
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs

   METHOD onException
   METHOD onPropertyChanged
   METHOD onSignal

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAxWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QAxObject>

/*
QAxWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

/*
QAxWidget ( const QString & c, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new2|const QString &,QWidget *=0,Qt::WindowFlags=0

/*
QAxWidget ( IUnknown * iface, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new3|IUnknown *,QWidget *=0,Qt::WindowFlags=0

//[1]QAxWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QAxWidget ( const QString & c, QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[3]QAxWidget ( IUnknown * iface, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QAXWIDGET_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QAxWidget_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QAxWidget_new2();
  }
  else if( ISBETWEEN(1,3) && ISPOINTER(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QAxWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

// métodos da classe QAxWidget

/*
virtual QAxAggregated * createAggregate ()
*/
$virtualMethod=|QAxAggregated *|createAggregate|

/*
bool doVerb ( const QString & verb )
*/
$method=|bool|doVerb|const QString &

/*
virtual void clear ()
*/
$virtualMethod=|void|clear|

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

// métodos da classe QAxBase, colocados aqui por causa
// de problemas com herança no [x]Harbour

/*
QVariant asVariant () const
*/
$method=|QVariant|asVariant|

/*
QString control () const
*/
$method=|QString|control|

/*
void disableClassInfo ()
*/
$method=|void|disableClassInfo|

/*
void disableEventSink ()
*/
$method=|void|disableEventSink|

/*
void disableMetaObject ()
*/
$method=|void|disableMetaObject|

/*
QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
$internalMethod=|QVariant|dynamicCall,dynamicCall1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

/*
QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
*/
void QAxWidget_dynamicCall2 ()
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QVariant * ptr = new QVariant( obj->dynamicCall ( (const char *) hb_parc(1), par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

//[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXWIDGET_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxWidget_dynamicCall1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxWidget_dynamicCall2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString generateDocumentation ()
*/
$method=|QString|generateDocumentation|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
virtual bool propertyWritable ( const char * prop ) const
*/
$virtualMethod=|bool|propertyWritable|const char *

/*
QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
$internalMethod=|QAxObject *|querySubObject,querySubObject1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

/*
QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
*/
void QAxWidget_querySubObject2 ()
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QAxObject * ptr = obj->querySubObject ( (const char *) hb_parc(1), par2 );
    _qt4xhb_createReturnClass ( ptr, "QAXOBJECT" );
  }
}

//[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXWIDGET_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxWidget_querySubObject1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxWidget_querySubObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setControl ( const QString & )
*/
$method=|bool|setControl|const QString &

/*
virtual void setPropertyWritable ( const char * prop, bool ok )
*/
$virtualMethod=|void|setPropertyWritable|const char *,bool

/*
QStringList verbs () const
*/
$method=|QStringList|verbs|

#pragma ENDDUMP
