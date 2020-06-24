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

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>
#include <QtGui/QAbstractItemDelegate>
#include <QtGui/QAbstractProxyModel>

$prototype=QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
$internalConstructor=|new1|QWidget *,Qt::WindowFlags

$prototype=QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
$internalConstructor=|new2|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString()

/*
[1]QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
[2]QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
*/

HB_FUNC_STATIC( QFILEDIALOG_NEW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QFileDialog_new1();
  }
  else if( ISBETWEEN(0,4) && (ISQWIDGET(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    QFileDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QFileDialog::AcceptMode acceptMode() const

$prototypeV2=bool confirmOverwrite() const

$prototypeV2=QString defaultSuffix() const

$prototypeV2=QDir directory() const

$prototypeV2=QFileDialog::FileMode fileMode() const

$prototypeV2=QDir::Filters filter() const

$prototypeV2=QStringList history() const

$prototypeV2=QFileIconProvider * iconProvider() const

$prototypeV2=bool isNameFilterDetailsVisible() const

$prototypeV2=bool isReadOnly() const

$prototypeV2=QAbstractItemDelegate * itemDelegate() const

$prototypeV2=QString labelText( QFileDialog::DialogLabel label ) const

$prototypeV2=QStringList nameFilters() const

$prototypeV2=void open( QObject * receiver, const char * member )

$prototypeV2=QFileDialog::Options options() const

$prototypeV2=QAbstractProxyModel * proxyModel() const

$prototypeV2=bool resolveSymlinks() const

$prototypeV2=bool restoreState( const QByteArray & state )

$prototypeV2=QByteArray saveState() const

$prototypeV2=void selectFile( const QString & filename )

$prototypeV2=void selectNameFilter( const QString & filter )

$prototypeV2=QStringList selectedFiles() const

$prototypeV2=QString selectedNameFilter() const

$prototypeV2=void setAcceptMode( QFileDialog::AcceptMode mode )

$prototypeV2=void setConfirmOverwrite( bool enabled )

$prototypeV2=void setDefaultSuffix( const QString & suffix )

$prototype=void setDirectory ( const QString & directory )
$internalMethod=|void|setDirectory,setDirectory1|const QString &

$prototype=void setDirectory ( const QDir & directory )
$internalMethod=|void|setDirectory,setDirectory2|const QDir &

/*
[1]void setDirectory ( const QString & directory )
[2]void setDirectory ( const QDir & directory )
*/

HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileDialog_setDirectory1();
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QFileDialog_setDirectory2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setDirectory

$prototypeV2=void setFileMode( QFileDialog::FileMode mode )

$prototypeV2=void setFilter( QDir::Filters filters )

$prototypeV2=void setHistory( const QStringList & paths )

$prototypeV2=void setIconProvider( QFileIconProvider * provider )

$prototypeV2=void setItemDelegate( QAbstractItemDelegate * delegate )

$prototypeV2=void setLabelText( QFileDialog::DialogLabel label, const QString & text )

$prototypeV2=void setNameFilter( const QString & filter )

$prototypeV2=void setNameFilterDetailsVisible( bool enabled )

$prototypeV2=void setNameFilters( const QStringList & filters )

$prototypeV2=void setOption( QFileDialog::Option option, bool on = true )

$prototypeV2=void setOptions( QFileDialog::Options options )

$prototypeV2=void setProxyModel( QAbstractProxyModel * proxyModel )

$prototypeV2=void setReadOnly( bool enabled )

$prototypeV2=void setResolveSymlinks( bool enabled )

$prototypeV2=void setSidebarUrls( const QList<QUrl> & urls )

$prototypeV2=void setViewMode( QFileDialog::ViewMode mode )

$prototypeV2=QList<QUrl> sidebarUrls() const

$prototypeV2=bool testOption( QFileDialog::Option option ) const

$prototypeV2=QFileDialog::ViewMode viewMode() const

$prototypeV2=virtual void setVisible( bool visible )

$prototypeV2=static QString getExistingDirectory( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), QFileDialog::Options options = QFileDialog::ShowDirsOnly )

$prototypeV2=static QString getOpenFileName( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, QFileDialog::Options options = 0 )

$prototypeV2=static QStringList getOpenFileNames( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, QFileDialog::Options options = 0 )

$prototypeV2=static QString getSaveFileName( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, QFileDialog::Options options = 0 )

$beginSignals
$signal=|currentChanged(QString)
$signal=|directoryEntered(QString)
$signal=|fileSelected(QString)
$signal=|filesSelected(QStringList)
$signal=|filterSelected(QString)
$endSignals

#pragma ENDDUMP
