$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTITEMDELEGATE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
#endif

CLASS QDataWidgetMapper INHERIT QObject

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

$destructor

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

$deleteMethod

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
$method=|int|currentIndex|

/*
QAbstractItemDelegate * itemDelegate () const
*/
$method=|QAbstractItemDelegate *|itemDelegate|

/*
QByteArray mappedPropertyName ( QWidget * widget ) const
*/
$method=|QByteArray|mappedPropertyName|QWidget *

/*
int mappedSection ( QWidget * widget ) const
*/
$method=|int|mappedSection|QWidget *

/*
QWidget * mappedWidgetAt ( int section ) const
*/
$method=|QWidget *|mappedWidgetAt|int

/*
QAbstractItemModel * model () const
*/
$method=|QAbstractItemModel *|model|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void removeMapping ( QWidget * widget )
*/
$method=|void|removeMapping|QWidget *

/*
QModelIndex rootIndex () const
*/
$method=|QModelIndex|rootIndex|

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegate|QAbstractItemDelegate *

/*
void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
void setOrientation ( Qt::Orientation aOrientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setRootIndex ( const QModelIndex & index )
*/
$method=|void|setRootIndex|const QModelIndex &

/*
void setSubmitPolicy ( SubmitPolicy policy )
*/
$method=|void|setSubmitPolicy|QDataWidgetMapper::SubmitPolicy

/*
SubmitPolicy submitPolicy () const
*/
$method=|QDataWidgetMapper::SubmitPolicy|submitPolicy|

/*
void revert ()
*/
$method=|void|revert|

/*
virtual void setCurrentIndex ( int index )
*/
$virtualMethod=|void|setCurrentIndex|int

/*
void setCurrentModelIndex ( const QModelIndex & index )
*/
$method=|void|setCurrentModelIndex|const QModelIndex &

/*
bool submit ()
*/
$method=|bool|submit|

/*
void toFirst ()
*/
$method=|void|toFirst|

/*
void toLast ()
*/
$method=|void|toLast|

/*
void toNext ()
*/
$method=|void|toNext|

/*
void toPrevious ()
*/
$method=|void|toPrevious|

#pragma ENDDUMP
