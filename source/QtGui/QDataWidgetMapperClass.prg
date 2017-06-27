/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTITEMDELEGATE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
#endif

CLASS QDataWidgetMapper INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addMapping1
   METHOD addMapping2
   METHOD addMapping
   METHOD clearMapping
   METHOD currentIndex
   METHOD itemDelegate
   METHOD mappedPropertyName
   METHOD mappedSection
   METHOD mappedWidgetAt
   METHOD model
   METHOD orientation
   METHOD removeMapping
   METHOD rootIndex
   METHOD setItemDelegate
   METHOD setModel
   METHOD setOrientation
   METHOD setRootIndex
   METHOD setSubmitPolicy
   METHOD submitPolicy
   METHOD revert
   METHOD setCurrentIndex
   METHOD setCurrentModelIndex
   METHOD submit
   METHOD toFirst
   METHOD toLast
   METHOD toNext
   METHOD toPrevious
   METHOD onCurrentIndexChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDataWidgetMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDataWidgetMapper>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QModelIndex>

/*
QDataWidgetMapper ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_NEW )
{
  QDataWidgetMapper * o = new QDataWidgetMapper ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QDATAWIDGETMAPPER_DELETE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addMapping ( QWidget * widget, int section )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING1 )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->addMapping ( PQWIDGET(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING2 )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addMapping ( PQWIDGET(1), PINT(2), *PQBYTEARRAY(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addMapping ( QWidget * widget, int section )
//[2]void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )

HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATAWIDGETMAPPER_ADDMAPPING1 );
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    HB_FUNC_EXEC( QDATAWIDGETMAPPER_ADDMAPPING2 );
  }
}

/*
void clearMapping ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_CLEARMAPPING )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearMapping ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_CURRENTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}


/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ITEMDELEGATE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}


/*
QByteArray mappedPropertyName ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDPROPERTYNAME )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->mappedPropertyName ( PQWIDGET(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int mappedSection ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDSECTION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->mappedSection ( PQWIDGET(1) ) );
  }
}


/*
QWidget * mappedWidgetAt ( int section ) const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MAPPEDWIDGETAT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->mappedWidgetAt ( PINT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_MODEL )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * ptr = obj->model ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ORIENTATION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RENUM( obj->orientation () );
  }
}


/*
void removeMapping ( QWidget * widget )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_REMOVEMAPPING )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeMapping ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex rootIndex () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_ROOTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->rootIndex () );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETITEMDELEGATE )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * par1 = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemDelegate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETMODEL )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOrientation ( Qt::Orientation aOrientation )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETORIENTATION )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETROOTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRootIndex ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSubmitPolicy ( SubmitPolicy policy )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETSUBMITPOLICY )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSubmitPolicy ( (QDataWidgetMapper::SubmitPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SubmitPolicy submitPolicy () const
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SUBMITPOLICY )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->submitPolicy () );
  }
}


/*
void revert ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_REVERT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->revert ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETCURRENTINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentIndex ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentModelIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SETCURRENTMODELINDEX )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentModelIndex ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool submit ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_SUBMIT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->submit () );
  }
}


/*
void toFirst ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOFIRST )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toFirst ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toLast ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOLAST )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toLast ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toNext ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TONEXT )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toNext ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toPrevious ()
*/
HB_FUNC_STATIC( QDATAWIDGETMAPPER_TOPREVIOUS )
{
  QDataWidgetMapper * obj = (QDataWidgetMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toPrevious ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
