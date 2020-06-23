%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

   METHOD onActivated
   METHOD onActivatedC
   METHOD onCurrentIndexChanged
   METHOD onCurrentIndexChangedC
   METHOD onHighlighted
   METHOD onHighlightedC

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QCompleter>
#include <QtGui/QLineEdit>
#include <QtGui/QAbstractItemView>

$prototype=QComboBox ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void addItem ( const QString & text, const QVariant & userData = QVariant() )
$internalMethod=|void|addItem,addItem1|const QString &,const QVariant &=QVariant()

$prototype=void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
$internalMethod=|void|addItem,addItem2|const QIcon &,const QString &,const QVariant &=QVariant()

/*
[1]void addItem ( const QString & text, const QVariant & userData = QVariant() )
[2]void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/

HB_FUNC_STATIC( QCOMBOBOX_ADDITEM )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) )
  {
    QComboBox_addItem1();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    QComboBox_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addItem

$prototypeV2=void addItems( const QStringList & texts )

$prototypeV2=QCompleter * completer() const

$prototypeV2=int count() const

$prototypeV2=int currentIndex() const

$prototypeV2=QString currentText() const

$prototypeV2=bool duplicatesEnabled() const

$prototype=int findData ( const QVariant & data, int role = Qt::UserRole, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
$method=|int|findData|const QVariant &,int=Qt::UserRole,Qt::MatchFlags=Qt::MatchExactly OR Qt::MatchCaseSensitive

$prototype=int findText ( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
$method=|int|findText|const QString &,Qt::MatchFlags=Qt::MatchExactly OR Qt::MatchCaseSensitive

$prototypeV2=bool hasFrame() const

$prototypeV2=virtual void hidePopup()

$prototypeV2=QSize iconSize() const

$prototype=void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
$internalMethod=|void|insertItem,insertItem1|int,const QString &,const QVariant &=QVariant()

$prototype=void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
$internalMethod=|void|insertItem,insertItem2|int,const QIcon &,const QString &,const QVariant &=QVariant()

/*
[1]void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
[2]void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/

HB_FUNC_STATIC( QCOMBOBOX_INSERTITEM )
{
  if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    QComboBox_insertItem1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) && (ISQVARIANT(4)||ISNIL(4)) )
  {
    QComboBox_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertItem

$prototypeV2=void insertItems( int index, const QStringList & list )

$prototypeV2=QComboBox::InsertPolicy insertPolicy() const

$prototypeV2=void insertSeparator( int index )

$prototypeV2=bool isEditable() const

$prototype=QVariant itemData ( int index, int role = Qt::UserRole ) const
$method=|QVariant|itemData|int,int=Qt::UserRole

$prototypeV2=QAbstractItemDelegate * itemDelegate() const

$prototypeV2=QIcon itemIcon( int index ) const

$prototypeV2=QString itemText( int index ) const

$prototypeV2=QLineEdit * lineEdit() const

$prototypeV2=int maxCount() const

$prototypeV2=int maxVisibleItems() const

$prototypeV2=int minimumContentsLength() const

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=int modelColumn() const

$prototypeV2=void removeItem( int index )

$prototypeV2=QModelIndex rootModelIndex() const

$prototypeV2=void setCompleter( QCompleter * completer )

$prototypeV2=void setDuplicatesEnabled( bool enable )

$prototypeV2=void setEditable( bool editable )

$prototypeV2=void setFrame( bool )

$prototypeV2=void setIconSize( const QSize & size )

$prototypeV2=void setInsertPolicy( QComboBox::InsertPolicy policy )

$prototype=void setItemData ( int index, const QVariant & value, int role = Qt::UserRole )
$method=|void|setItemData|int,const QVariant &,int=Qt::UserRole

$prototypeV2=void setItemDelegate( QAbstractItemDelegate * delegate )

$prototypeV2=void setItemIcon( int index, const QIcon & icon )

$prototypeV2=void setItemText( int index, const QString & text )

$prototypeV2=void setLineEdit( QLineEdit * edit )

$prototypeV2=void setMaxCount( int max )

$prototypeV2=void setMaxVisibleItems( int maxItems )

$prototypeV2=void setMinimumContentsLength( int characters )

$prototypeV2=void setModel( QAbstractItemModel * model )

$prototypeV2=void setModelColumn( int visibleColumn )

$prototypeV2=void setRootModelIndex( const QModelIndex & index )

$prototypeV2=void setSizeAdjustPolicy( QComboBox::SizeAdjustPolicy policy )

$prototypeV2=void setValidator( const QValidator * validator )

$prototypeV2=void setView( QAbstractItemView * itemView )

$prototypeV2=virtual void showPopup()

$prototypeV2=QComboBox::SizeAdjustPolicy sizeAdjustPolicy() const

$prototypeV2=const QValidator * validator() const

$prototypeV2=QAbstractItemView * view() const

$prototypeV2=virtual bool event( QEvent * event )

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void clear()

$prototypeV2=void clearEditText()

$prototypeV2=void setCurrentIndex( int index )

$prototypeV2=void setEditText( const QString & text )

$beginSignals
$beginGroup
$signal=|activated(int)
$signal=|activated(QString)
$endGroup
$beginGroup
$signal=|currentIndexChanged(int)
$signal=|currentIndexChanged(QString)
$endGroup
$signal=|editTextChanged(QString)
$beginGroup
$signal=|highlighted(int)
$signal=|highlighted(QString)
$endGroup
$endSignals

// for compatibility

HB_FUNC_STATIC( QCOMBOBOX_ONACTIVATED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONACTIVATED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONACTIVATEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONACTIVATED2 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONCURRENTINDEXCHANGED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONCURRENTINDEXCHANGED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONCURRENTINDEXCHANGEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONCURRENTINDEXCHANGED2 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONHIGHLIGHTED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONHIGHLIGHTED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONHIGHLIGHTEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONHIGHLIGHTED2 );
}

#pragma ENDDUMP
