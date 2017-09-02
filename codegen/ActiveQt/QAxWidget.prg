/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QAxWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAxWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAxWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
void QAxWidget_new1 ()
{
  int par2 = ISNIL(2)? 0 : hb_parni(2);
  QAxWidget * o = new QAxWidget ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QAxWidget ( const QString & c, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
void QAxWidget_new2 ()
{
  int par3 = ISNIL(3)? 0 : hb_parni(3);
  QAxWidget * o = new QAxWidget ( PQSTRING(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QAxWidget ( IUnknown * iface, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
void QAxWidget_new3 ()
{
  IUnknown * par1 = (IUnknown *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? 0 : hb_parni(3);
  QAxWidget * o = new QAxWidget ( par1, OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

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

HB_FUNC_STATIC( QAXWIDGET_DELETE )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

// métodos da classe QAxWidget

/*
virtual QAxAggregated * createAggregate ()
*/
HB_FUNC_STATIC( QAXWIDGET_CREATEAGGREGATE )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAxAggregated * ptr = obj->createAggregate ();
    _qt4xhb_createReturnClass ( ptr, "QAXAGGREGATED" );
  }
}

/*
bool doVerb ( const QString & verb )
*/
HB_FUNC_STATIC( QAXWIDGET_DOVERB )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->doVerb ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void clear ()
*/
HB_FUNC_STATIC( QAXWIDGET_CLEAR )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QAXWIDGET_MINIMUMSIZEHINT )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QAXWIDGET_SIZEHINT )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

// métodos da classe QAxBase, colocados aqui por causa
// de problemas com herança no [x]Harbour

/*
QVariant asVariant () const
*/
HB_FUNC_STATIC( QAXWIDGET_ASVARIANT )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->asVariant () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QString control () const
*/
HB_FUNC_STATIC( QAXWIDGET_CONTROL )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    RQSTRING( obj->control () );
  }
}

/*
void disableClassInfo ()
*/
HB_FUNC_STATIC( QAXWIDGET_DISABLECLASSINFO )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->disableClassInfo ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void disableEventSink ()
*/
HB_FUNC_STATIC( QAXWIDGET_DISABLEEVENTSINK )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->disableEventSink ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void disableMetaObject ()
*/
HB_FUNC_STATIC( QAXWIDGET_DISABLEMETAOBJECT )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->disableMetaObject ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxWidget_dynamicCall1 ()
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->dynamicCall ( (const char *) hb_parc(1), par2, par3, par4, par5, par6, par7, par8, par9 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

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
HB_FUNC_STATIC( QAXWIDGET_GENERATEDOCUMENTATION )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    RQSTRING( obj->generateDocumentation () );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QAXWIDGET_ISNULL )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
virtual bool propertyWritable ( const char * prop ) const
*/
HB_FUNC_STATIC( QAXWIDGET_PROPERTYWRITABLE )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->propertyWritable ( (const char *) hb_parc(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxWidget_querySubObject1 ()
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par5 = ISNIL(5)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par6 = ISNIL(6)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par7 = ISNIL(7)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par8 = ISNIL(8)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant par9 = ISNIL(9)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAxObject * ptr = obj->querySubObject ( (const char *) hb_parc(1), par2, par3, par4, par5, par6, par7, par8, par9 );
    _qt4xhb_createReturnClass ( ptr, "QAXOBJECT" );
  }
}

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
HB_FUNC_STATIC( QAXWIDGET_SETCONTROL )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->setControl ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setPropertyWritable ( const char * prop, bool ok )
*/
HB_FUNC_STATIC( QAXWIDGET_SETPROPERTYWRITABLE )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISCHAR(1) && ISLOG(2) )
    {
      obj->setPropertyWritable ( (const char *) hb_parc(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList verbs () const
*/
HB_FUNC_STATIC( QAXWIDGET_VERBS )
{
  QAxWidget * obj = (QAxWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    RQSTRINGLIST( obj->verbs () );
  }
}

#pragma ENDDUMP
