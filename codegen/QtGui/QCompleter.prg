$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMVIEW
REQUEST QWIDGET
#endif

CLASS QCompleter INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD caseSensitivity
   METHOD completionColumn
   METHOD completionCount
   METHOD completionMode
   METHOD completionModel
   METHOD completionPrefix
   METHOD completionRole
   METHOD currentCompletion
   METHOD currentIndex
   METHOD currentRow
   METHOD maxVisibleItems
   METHOD model
   METHOD modelSorting
   METHOD pathFromIndex
   METHOD popup
   METHOD setCaseSensitivity
   METHOD setCompletionColumn
   METHOD setCompletionMode
   METHOD setCompletionRole
   METHOD setCurrentRow
   METHOD setMaxVisibleItems
   METHOD setModel
   METHOD setModelSorting
   METHOD setPopup
   METHOD setWidget
   METHOD splitPath
   METHOD widget
   METHOD wrapAround
   METHOD complete
   METHOD setCompletionPrefix
   METHOD setWrapAround

   METHOD onActivated1
   METHOD onActivated2
   METHOD onHighlighted1
   METHOD onHighlighted2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCompleter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QCompleter ( QObject * parent = 0 )
*/
$constructor=|new1|QObject *=0

/*
QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
*/
$constructor=|new2|QAbstractItemModel *,QObject *=0

/*
QCompleter ( const QStringList & list, QObject * parent = 0 )
*/
$constructor=|new3|const QStringList &,QObject *=0

//[1]QCompleter ( QObject * parent = 0 )
//[2]QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
//[3]QCompleter ( const QStringList & list, QObject * parent = 0 )

HB_FUNC_STATIC( QCOMPLETER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCOMPLETER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCOMPLETER_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCOMPLETER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::CaseSensitivity caseSensitivity () const
*/
$method=|Qt::CaseSensitivity|caseSensitivity|

/*
int completionColumn () const
*/
$method=|int|completionColumn|

/*
int completionCount () const
*/
$method=|int|completionCount|

/*
CompletionMode completionMode () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONMODE )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->completionMode () );
  }
}

/*
QAbstractItemModel * completionModel () const
*/
$method=|QAbstractItemModel *|completionModel|

/*
QString completionPrefix () const
*/
$method=|QString|completionPrefix|

/*
int completionRole () const
*/
$method=|int|completionRole|

/*
QString currentCompletion () const
*/
$method=|QString|currentCompletion|

/*
QModelIndex currentIndex () const
*/
HB_FUNC_STATIC( QCOMPLETER_CURRENTINDEX )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->currentIndex () );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
int currentRow () const
*/
$method=|int|currentRow|

/*
int maxVisibleItems () const
*/
$method=|int|maxVisibleItems|

/*
QAbstractItemModel * model () const
*/
$method=|QAbstractItemModel *|model|

/*
ModelSorting modelSorting () const
*/
HB_FUNC_STATIC( QCOMPLETER_MODELSORTING )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->modelSorting () );
  }
}

/*
virtual QString pathFromIndex ( const QModelIndex & index ) const
*/
$virtualMethod=|QString|pathFromIndex|const QModelIndex &

/*
QAbstractItemView * popup () const
*/
HB_FUNC_STATIC( QCOMPLETER_POPUP )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemView * ptr = obj->popup ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMVIEW" );
  }
}

/*
void setCaseSensitivity ( Qt::CaseSensitivity caseSensitivity )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCASESENSITIVITY )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCaseSensitivity ( (Qt::CaseSensitivity) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionColumn ( int column )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONCOLUMN )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCompletionColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionMode ( CompletionMode mode )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONMODE )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCompletionMode ( (QCompleter::CompletionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionRole ( int role )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONROLE )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCompletionRole ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setCurrentRow ( int row )
*/
$method=|bool|setCurrentRow|int

/*
void setMaxVisibleItems ( int maxItems )
*/
$method=|void|setMaxVisibleItems|int

/*
void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
void setModelSorting ( ModelSorting sorting )
*/
$method=|void|setModelSorting|QCompleter::ModelSorting

/*
void setPopup ( QAbstractItemView * popup )
*/
$method=|void|setPopup|QAbstractItemView *

/*
void setWidget ( QWidget * widget )
*/
$method=|void|setWidget|QWidget *

/*
virtual QStringList splitPath ( const QString & path ) const
*/
$virtualMethod=|QStringList|splitPath|const QString &

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

/*
bool wrapAround () const
*/
$method=|bool|wrapAround|

/*
void complete ( const QRect & rect = QRect() )
*/
$method=|void|complete|const QRect &=QRect()

/*
void setCompletionPrefix ( const QString & prefix )
*/
$method=|void|setCompletionPrefix|const QString &

/*
void setWrapAround ( bool wrap )
*/
$method=|void|setWrapAround|bool

#pragma ENDDUMP
