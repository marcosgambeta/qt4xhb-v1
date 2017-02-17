/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOMPLETER
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QABSTRACTITEMDELEGATE
REQUEST QICON
REQUEST QLINEEDIT
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
REQUEST QVALIDATOR
REQUEST QABSTRACTITEMVIEW

CLASS QComboBox INHERIT QWidget

   DATA class_id INIT Class_Id_QComboBox
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addItem1
   METHOD addItem2
   METHOD addItem
   METHOD addItems
   METHOD completer
   METHOD count
   METHOD currentIndex
   METHOD currentText
   METHOD duplicatesEnabled
   METHOD findData
   METHOD findText
   METHOD hasFrame
   METHOD hidePopup
   METHOD iconSize
   METHOD insertItem1
   METHOD insertItem2
   METHOD insertItem
   METHOD insertItems
   METHOD insertPolicy
   METHOD insertSeparator
   METHOD isEditable
   METHOD itemData
   METHOD itemDelegate
   METHOD itemIcon
   METHOD itemText
   METHOD lineEdit
   METHOD maxCount
   METHOD maxVisibleItems
   METHOD minimumContentsLength
   METHOD model
   METHOD modelColumn
   METHOD removeItem
   METHOD rootModelIndex
   METHOD setCompleter
   METHOD setDuplicatesEnabled
   METHOD setEditable
   METHOD setFrame
   METHOD setIconSize
   METHOD setInsertPolicy
   METHOD setItemData
   METHOD setItemDelegate
   METHOD setItemIcon
   METHOD setItemText
   METHOD setLineEdit
   METHOD setMaxCount
   METHOD setMaxVisibleItems
   METHOD setMinimumContentsLength
   METHOD setModel
   METHOD setModelColumn
   METHOD setRootModelIndex
   METHOD setSizeAdjustPolicy
   METHOD setValidator
   METHOD setView
   METHOD showPopup
   METHOD sizeAdjustPolicy
   METHOD validator
   METHOD view
   METHOD event
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD clearEditText
   METHOD setCurrentIndex
   METHOD setEditText
   METHOD onActivated
   METHOD onActivatedC
   METHOD onCurrentIndexChanged
   METHOD onCurrentIndexChangedC
   METHOD onEditTextChanged
   METHOD onHighlighted
   METHOD onHighlightedC
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QComboBox>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QComboBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOMBOBOX_NEW )
{
  QComboBox * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QComboBox ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QComboBox *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QCOMBOBOX_DELETE )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addItem ( const QString & text, const QVariant & userData = QVariant() )
*/
HB_FUNC_STATIC( QCOMBOBOX_ADDITEM1 )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addItem ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
HB_FUNC_STATIC( QCOMBOBOX_ADDITEM2 )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QString par2 = hb_parc(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addItem ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addItem ( const QString & text, const QVariant & userData = QVariant() )
//[2]void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )

HB_FUNC_STATIC( QCOMBOBOX_ADDITEM )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCOMBOBOX_ADDITEM1 );
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QCOMBOBOX_ADDITEM2 );
  }
}

/*
void addItems ( const QStringList & texts )
*/
HB_FUNC_STATIC( QCOMBOBOX_ADDITEMS )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
    obj->addItems ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QCompleter * completer () const
*/
HB_FUNC_STATIC( QCOMBOBOX_COMPLETER )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QCompleter * ptr = obj->completer (  );
    _qt4xhb_createReturnClass ( ptr, "QCOMPLETER" );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QCOMBOBOX_COUNT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QCOMBOBOX_CURRENTINDEX )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->currentIndex (  ) );
  }
}


/*
QString currentText () const
*/
HB_FUNC_STATIC( QCOMBOBOX_CURRENTTEXT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->currentText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool duplicatesEnabled () const
*/
HB_FUNC_STATIC( QCOMBOBOX_DUPLICATESENABLED )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->duplicatesEnabled (  ) );
  }
}


/*
int findData ( const QVariant & data, int role = Qt::UserRole, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_FINDDATA )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? Qt::UserRole : hb_parni(2);
    int par3 = ISNIL(3)? (int) Qt::MatchExactly | Qt::MatchCaseSensitive : hb_parni(3);
    hb_retni( obj->findData ( *par1, par2,  (Qt::MatchFlags) par3 ) );
  }
}



/*
int findText ( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_FINDTEXT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? (int) Qt::MatchExactly | Qt::MatchCaseSensitive : hb_parni(2);
    hb_retni( obj->findText ( par1,  (Qt::MatchFlags) par2 ) );
  }
}



/*
bool hasFrame () const
*/
HB_FUNC_STATIC( QCOMBOBOX_HASFRAME )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasFrame (  ) );
  }
}


/*
virtual void hidePopup ()
*/
HB_FUNC_STATIC( QCOMBOBOX_HIDEPOPUP )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->hidePopup (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ICONSIZE )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTITEM1 )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertItem ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTITEM2 )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    QString par3 = hb_parc(3);
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertItem ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
//[2]void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )

HB_FUNC_STATIC( QCOMBOBOX_INSERTITEM )
{
  if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QCOMBOBOX_INSERTITEM1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) && (ISQVARIANT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCOMBOBOX_INSERTITEM2 );
  }
}

/*
void insertItems ( int index, const QStringList & list )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTITEMS )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = hb_arrayGetCPtr(aStrings2, i2+1);
par2 << temp;
}
    obj->insertItems ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
InsertPolicy insertPolicy () const
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTPOLICY )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->insertPolicy (  ) );
  }
}


/*
void insertSeparator ( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTSEPARATOR )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->insertSeparator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEditable () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ISEDITABLE )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEditable (  ) );
  }
}


/*
QVariant itemData ( int index, int role = Qt::UserRole ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMDATA )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? Qt::UserRole : hb_parni(2);
    QVariant * ptr = new QVariant( obj->itemData ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMDELEGATE )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}


/*
QIcon itemIcon ( int index ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMICON )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon * ptr = new QIcon( obj->itemIcon ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
QString itemText ( int index ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMTEXT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->itemText ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QLineEdit * lineEdit () const
*/
HB_FUNC_STATIC( QCOMBOBOX_LINEEDIT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineEdit * ptr = obj->lineEdit (  );
    _qt4xhb_createReturnClass ( ptr, "QLINEEDIT" );
  }
}


/*
int maxCount () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MAXCOUNT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->maxCount (  ) );
  }
}


/*
int maxVisibleItems () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MAXVISIBLEITEMS )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->maxVisibleItems (  ) );
  }
}


/*
int minimumContentsLength () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MINIMUMCONTENTSLENGTH )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->minimumContentsLength (  ) );
  }
}


/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MODEL )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * ptr = obj->model (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}


/*
int modelColumn () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MODELCOLUMN )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->modelColumn (  ) );
  }
}


/*
void removeItem ( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_REMOVEITEM )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removeItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex rootModelIndex () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ROOTMODELINDEX )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->rootModelIndex (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
void setCompleter ( QCompleter * completer )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETCOMPLETER )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QCompleter * par1 = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCompleter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDuplicatesEnabled ( bool enable )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETDUPLICATESENABLED )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setDuplicatesEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEditable ( bool editable )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETEDITABLE )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setEditable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrame ( bool )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETFRAME )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFrame ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETICONSIZE )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInsertPolicy ( InsertPolicy policy )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETINSERTPOLICY )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInsertPolicy (  (QComboBox::InsertPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemData ( int index, const QVariant & value, int role = Qt::UserRole )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMDATA )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par3 = ISNIL(3)? Qt::UserRole : hb_parni(3);
    obj->setItemData ( par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMDELEGATE )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * par1 = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemDelegate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemIcon ( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMICON )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon par2 = ISOBJECT(2)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(2));
    obj->setItemIcon ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemText ( int index, const QString & text )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMTEXT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setItemText ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLineEdit ( QLineEdit * edit )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETLINEEDIT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineEdit * par1 = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setLineEdit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaxCount ( int max )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMAXCOUNT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMaxCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaxVisibleItems ( int maxItems )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMAXVISIBLEITEMS )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMaxVisibleItems ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinimumContentsLength ( int characters )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMINIMUMCONTENTSLENGTH )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMinimumContentsLength ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMODEL )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModelColumn ( int visibleColumn )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMODELCOLUMN )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setModelColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRootModelIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETROOTMODELINDEX )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRootModelIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizeAdjustPolicy ( SizeAdjustPolicy policy )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETSIZEADJUSTPOLICY )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSizeAdjustPolicy (  (QComboBox::SizeAdjustPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValidator ( const QValidator * validator )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETVALIDATOR )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QValidator * par1 = (const QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValidator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setView ( QAbstractItemView * itemView )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETVIEW )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemView * par1 = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setView ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void showPopup ()
*/
HB_FUNC_STATIC( QCOMBOBOX_SHOWPOPUP )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showPopup (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SizeAdjustPolicy sizeAdjustPolicy () const
*/
HB_FUNC_STATIC( QCOMBOBOX_SIZEADJUSTPOLICY )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->sizeAdjustPolicy (  ) );
  }
}


/*
const QValidator * validator () const
*/
HB_FUNC_STATIC( QCOMBOBOX_VALIDATOR )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QValidator * ptr = obj->validator (  );
    _qt4xhb_createReturnClass ( ptr, "QVALIDATOR" );
  }
}


/*
QAbstractItemView * view () const
*/
HB_FUNC_STATIC( QCOMBOBOX_VIEW )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemView * ptr = obj->view (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMVIEW" );
  }
}


/*
virtual bool event ( QEvent * event )
*/
HB_FUNC_STATIC( QCOMBOBOX_EVENT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->event ( par1 ) );
  }
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MINIMUMSIZEHINT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QCOMBOBOX_SIZEHINT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QCOMBOBOX_CLEAR )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearEditText ()
*/
HB_FUNC_STATIC( QCOMBOBOX_CLEAREDITTEXT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearEditText (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETCURRENTINDEX )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurrentIndex ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEditText ( const QString & text )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETEDITTEXT )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setEditText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
