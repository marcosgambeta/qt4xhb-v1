$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDIR
REQUEST QFILEICONPROVIDER
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTPROXYMODEL
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QFileDialog INHERIT QDialog

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD acceptMode
   METHOD confirmOverwrite
   METHOD defaultSuffix
   METHOD directory
   METHOD fileMode
   METHOD filter
   METHOD history
   METHOD iconProvider
   METHOD isNameFilterDetailsVisible
   METHOD isReadOnly
   METHOD itemDelegate
   METHOD labelText
   METHOD nameFilters
   METHOD open
   METHOD options
   METHOD proxyModel
   METHOD resolveSymlinks
   METHOD restoreState
   METHOD saveState
   METHOD selectFile
   METHOD selectNameFilter
   METHOD selectedFiles
   METHOD selectedNameFilter
   METHOD setAcceptMode
   METHOD setConfirmOverwrite
   METHOD setDefaultSuffix
   METHOD setDirectory1
   METHOD setDirectory2
   METHOD setDirectory
   METHOD setFileMode
   METHOD setFilter
   METHOD setHistory
   METHOD setIconProvider
   METHOD setItemDelegate
   METHOD setLabelText
   METHOD setNameFilter
   METHOD setNameFilterDetailsVisible
   METHOD setNameFilters
   METHOD setOption
   METHOD setOptions
   METHOD setProxyModel
   METHOD setReadOnly
   METHOD setResolveSymlinks
   METHOD setSidebarUrls
   METHOD setViewMode
   METHOD sidebarUrls
   METHOD testOption
   METHOD viewMode
   METHOD setVisible
   METHOD getExistingDirectory
   METHOD getOpenFileName
   METHOD getOpenFileNames
   METHOD getSaveFileName

   METHOD onCurrentChanged
   METHOD onDirectoryEntered
   METHOD onFileSelected
   METHOD onFilesSelected
   METHOD onFilterSelected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFileDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QUrl>

/*
QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
*/
$constructor=|new1|QWidget *,Qt::WindowFlags

/*
QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
*/
$constructor=|new2|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString()

//[1]QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
//[2]QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )

HB_FUNC_STATIC( QFILEDIALOG_NEW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFILEDIALOG_NEW1 );
  }
  else if( ISBETWEEN(0,4) && (ISQWIDGET(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QFILEDIALOG_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
AcceptMode acceptMode () const
*/
$method=|QFileDialog::AcceptMode|acceptMode|

/*
bool confirmOverwrite () const
*/
$method=|bool|confirmOverwrite|

/*
QString defaultSuffix () const
*/
$method=|QString|defaultSuffix|

/*
QDir directory () const
*/
$method=|QDir|directory|

/*
FileMode fileMode () const
*/
$method=|QFileDialog::FileMode|fileMode|

/*
QDir::Filters filter () const
*/
$method=|QDir::Filters|filter|

/*
QStringList history () const
*/
$method=|QStringList|history|

/*
QFileIconProvider * iconProvider () const
*/
$method=|QFileIconProvider *|iconProvider|

/*
bool isNameFilterDetailsVisible () const
*/
$method=|bool|isNameFilterDetailsVisible|

/*
bool isReadOnly () const
*/
$method=|bool|isReadOnly|

/*
QAbstractItemDelegate * itemDelegate () const
*/
$method=|QAbstractItemDelegate *|itemDelegate|

/*
QString labelText ( DialogLabel label ) const
*/
$method=|QString|labelText|QFileDialog::DialogLabel

/*
QStringList nameFilters () const
*/
$method=|QStringList|nameFilters|

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
Options options () const
*/
$method=|QFileDialog::Options|options|

/*
QAbstractProxyModel * proxyModel () const
*/
$method=|QAbstractProxyModel *|proxyModel|

/*
bool resolveSymlinks () const
*/
$method=|bool|resolveSymlinks|

/*
bool restoreState ( const QByteArray & state )
*/
$method=|bool|restoreState|const QByteArray &

/*
QByteArray saveState () const
*/
$method=|QByteArray|saveState|

/*
void selectFile ( const QString & filename )
*/
$method=|void|selectFile|const QString &

/*
void selectNameFilter ( const QString & filter )
*/
$method=|void|selectNameFilter|const QString &

/*
QStringList selectedFiles () const
*/
$method=|QStringList|selectedFiles|

/*
QString selectedNameFilter () const
*/
$method=|QString|selectedNameFilter|

/*
void setAcceptMode ( AcceptMode mode )
*/
$method=|void|setAcceptMode|QFileDialog::AcceptMode

/*
void setConfirmOverwrite ( bool enabled )
*/
$method=|void|setConfirmOverwrite|bool

/*
void setDefaultSuffix ( const QString & suffix )
*/
$method=|void|setDefaultSuffix|const QString &

/*
void setDirectory ( const QString & directory )
*/
$method=|void|setDirectory,setDirectory1|const QString &

/*
void setDirectory ( const QDir & directory )
*/
$method=|void|setDirectory,setDirectory2|const QDir &

//[1]void setDirectory ( const QString & directory )
//[2]void setDirectory ( const QDir & directory )

HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILEDIALOG_SETDIRECTORY1 );
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    HB_FUNC_EXEC( QFILEDIALOG_SETDIRECTORY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFileMode ( FileMode mode )
*/
$method=|void|setFileMode|QFileDialog::FileMode

/*
void setFilter ( QDir::Filters filters )
*/
$method=|void|setFilter|QDir::Filters

/*
void setHistory ( const QStringList & paths )
*/
$method=|void|setHistory|const QStringList &

/*
void setIconProvider ( QFileIconProvider * provider )
*/
$method=|void|setIconProvider|QFileIconProvider *

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegate|QAbstractItemDelegate *

/*
void setLabelText ( DialogLabel label, const QString & text )
*/
$method=|void|setLabelText|QFileDialog::DialogLabel,const QString &

/*
void setNameFilter ( const QString & filter )
*/
$method=|void|setNameFilter|const QString &

/*
void setNameFilterDetailsVisible ( bool enabled )
*/
$method=|void|setNameFilterDetailsVisible|bool

/*
void setNameFilters ( const QStringList & filters )
*/
$method=|void|setNameFilters|const QStringList &

/*
void setOption ( Option option, bool on = true )
*/
$method=|void|setOption|QFileDialog::Option,bool=true

/*
void setOptions ( Options options )
*/
$method=|void|setOptions|QFileDialog::Options

/*
void setProxyModel ( QAbstractProxyModel * proxyModel )
*/
$method=|void|setProxyModel|QAbstractProxyModel *

/*
void setReadOnly ( bool enabled )
*/
$method=|void|setReadOnly|bool

/*
void setResolveSymlinks ( bool enabled )
*/
$method=|void|setResolveSymlinks|bool

/*
void setSidebarUrls ( const QList<QUrl> & urls )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETSIDEBARURLS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QUrl> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setSidebarUrls ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewMode ( ViewMode mode )
*/
$method=|void|setViewMode|QFileDialog::ViewMode

/*
QList<QUrl> sidebarUrls () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SIDEBARURLS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QUrl> list = obj->sidebarUrls ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QURL" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QUrl *) new QUrl ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool testOption ( Option option ) const
*/
$method=|bool|testOption|QFileDialog::Option

/*
ViewMode viewMode () const
*/
$method=|QFileDialog::ViewMode|viewMode|

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

/*
static QString getExistingDirectory ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), Options options = ShowDirsOnly )
*/
$staticMethod=|QString|getExistingDirectory|QWidget *=0,const QString &=QString(),const QString &=QString(),QFileDialog::Options=QFileDialog::ShowDirsOnly

/*
static QString getOpenFileName ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
$staticMethod=|QString|getOpenFileName|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

/*
static QStringList getOpenFileNames ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
$staticMethod=|QStringList|getOpenFileNames|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

/*
static QString getSaveFileName ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
$staticMethod=|QString|getSaveFileName|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

#pragma ENDDUMP
