/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QFileDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFileDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QUrl>

/*
QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
*/
HB_FUNC_STATIC( QFILEDIALOG_NEW1 )
{
  int par2 = hb_parni(2);
  QFileDialog * o = new QFileDialog ( PQWIDGET(1),  (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
*/
HB_FUNC_STATIC( QFILEDIALOG_NEW2 )
{
  QFileDialog * o = new QFileDialog ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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

HB_FUNC_STATIC( QFILEDIALOG_DELETE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
AcceptMode acceptMode () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ACCEPTMODE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->acceptMode () );
  }
}


/*
bool confirmOverwrite () const
*/
HB_FUNC_STATIC( QFILEDIALOG_CONFIRMOVERWRITE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->confirmOverwrite () );
  }
}


/*
QString defaultSuffix () const
*/
HB_FUNC_STATIC( QFILEDIALOG_DEFAULTSUFFIX )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->defaultSuffix ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
QDir directory () const
*/
HB_FUNC_STATIC( QFILEDIALOG_DIRECTORY )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDir * ptr = new QDir( obj->directory () );
    _qt4xhb_createReturnClass ( ptr, "QDIR", true );
  }
}


/*
FileMode fileMode () const
*/
HB_FUNC_STATIC( QFILEDIALOG_FILEMODE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->fileMode () );
  }
}


/*
QDir::Filters filter () const
*/
HB_FUNC_STATIC( QFILEDIALOG_FILTER )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->filter () );
  }
}


/*
QStringList history () const
*/
HB_FUNC_STATIC( QFILEDIALOG_HISTORY )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->history ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QFileIconProvider * iconProvider () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ICONPROVIDER )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileIconProvider * ptr = obj->iconProvider ();
    _qt4xhb_createReturnClass ( ptr, "QFILEICONPROVIDER" );
  }
}


/*
bool isNameFilterDetailsVisible () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ISNAMEFILTERDETAILSVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNameFilterDetailsVisible () );
  }
}


/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ISREADONLY )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isReadOnly () );
  }
}


/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QFILEDIALOG_ITEMDELEGATE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}


/*
QString labelText ( DialogLabel label ) const
*/
HB_FUNC_STATIC( QFILEDIALOG_LABELTEXT )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->labelText (  (QFileDialog::DialogLabel) par1 );
    hb_retc( RQSTRING(str1) );
  }
}


/*
QStringList nameFilters () const
*/
HB_FUNC_STATIC( QFILEDIALOG_NAMEFILTERS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->nameFilters ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QFILEDIALOG_OPEN )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ( PQOBJECT(1),  (const char *) hb_parc(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Options options () const
*/
HB_FUNC_STATIC( QFILEDIALOG_OPTIONS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->options () );
  }
}


/*
QAbstractProxyModel * proxyModel () const
*/
HB_FUNC_STATIC( QFILEDIALOG_PROXYMODEL )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractProxyModel * ptr = obj->proxyModel ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTPROXYMODEL" );
  }
}


/*
bool resolveSymlinks () const
*/
HB_FUNC_STATIC( QFILEDIALOG_RESOLVESYMLINKS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->resolveSymlinks () );
  }
}


/*
bool restoreState ( const QByteArray & state )
*/
HB_FUNC_STATIC( QFILEDIALOG_RESTORESTATE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->restoreState ( *PQBYTEARRAY(1) ) );
  }
}


/*
QByteArray saveState () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SAVESTATE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveState () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void selectFile ( const QString & filename )
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTFILE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectFile ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectNameFilter ( const QString & filter )
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectNameFilter ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList selectedFiles () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTEDFILES )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->selectedFiles ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QString selectedNameFilter () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTEDNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->selectedNameFilter ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
void setAcceptMode ( AcceptMode mode )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETACCEPTMODE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAcceptMode (  (QFileDialog::AcceptMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setConfirmOverwrite ( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETCONFIRMOVERWRITE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setConfirmOverwrite ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDefaultSuffix ( const QString & suffix )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETDEFAULTSUFFIX )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDefaultSuffix ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDirectory ( const QString & directory )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY1 )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDirectory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDirectory ( const QDir & directory )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY2 )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDir * par1 = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDirectory ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
}

/*
void setFileMode ( FileMode mode )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETFILEMODE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFileMode (  (QFileDialog::FileMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilter ( QDir::Filters filters )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETFILTER )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFilter (  (QDir::Filters) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHistory ( const QStringList & paths )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETHISTORY )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHistory ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIconProvider ( QFileIconProvider * provider )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETICONPROVIDER )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileIconProvider * par1 = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setIconProvider ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETITEMDELEGATE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemDelegate * par1 = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemDelegate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLabelText ( DialogLabel label, const QString & text )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETLABELTEXT )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLabelText (  (QFileDialog::DialogLabel) par1, PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNameFilter ( const QString & filter )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNameFilter ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNameFilterDetailsVisible ( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTERDETAILSVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNameFilterDetailsVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNameFilters ( const QStringList & filters )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTERS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNameFilters ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( Option option, bool on = true )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETOPTION )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption ( (QFileDialog::Option) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptions ( Options options )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETOPTIONS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QFileDialog::Options) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProxyModel ( QAbstractProxyModel * proxyModel )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETPROXYMODEL )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractProxyModel * par1 = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProxyModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadOnly ( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETREADONLY )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setReadOnly ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResolveSymlinks ( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETRESOLVESYMLINKS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setResolveSymlinks ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QFILEDIALOG_SETVIEWMODE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setViewMode (  (QFileDialog::ViewMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QUrl> sidebarUrls () const
*/
HB_FUNC_STATIC( QFILEDIALOG_SIDEBARURLS )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QUrl> list = obj->sidebarUrls ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QURL" );
    #else
    pDynSym = hb_dynsymFindName( "QURL" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
HB_FUNC_STATIC( QFILEDIALOG_TESTOPTION )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->testOption (  (QFileDialog::Option) par1 ) );
  }
}


/*
ViewMode viewMode () const
*/
HB_FUNC_STATIC( QFILEDIALOG_VIEWMODE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->viewMode () );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QString getExistingDirectory ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), Options options = ShowDirsOnly )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETEXISTINGDIRECTORY )
{
  int par4 = ISNIL(4)? (int) QFileDialog::ShowDirsOnly : hb_parni(4);
  QString str1 = QFileDialog::getExistingDirectory ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()),  (QFileDialog::Options) par4 );
  hb_retc( RQSTRING(str1) );
}


/*
QString getOpenFileName ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILENAME )
{
  QString * par5 = NULL;
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  QString str1 = QFileDialog::getOpenFileName ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), par5,  (QFileDialog::Options) par6 );
  hb_retc( RQSTRING(str1) );
}


/*
QStringList getOpenFileNames ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILENAMES )
{
  QString * par5 = NULL;
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  QStringList strl = QFileDialog::getOpenFileNames ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), par5,  (QFileDialog::Options) par6 );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<strl.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, RQSTRING(strl[i]) );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}


/*
QString getSaveFileName ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETSAVEFILENAME )
{
  QString * par5 = NULL;
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  QString str1 = QFileDialog::getSaveFileName ( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), par5,  (QFileDialog::Options) par6 );
  hb_retc( RQSTRING(str1) );
}





#pragma ENDDUMP
