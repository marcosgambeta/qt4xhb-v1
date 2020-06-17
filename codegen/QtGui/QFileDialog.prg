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

$prototype=QString labelText ( DialogLabel label ) const
$method=|QString|labelText|QFileDialog::DialogLabel

$prototypeV2=QStringList nameFilters() const

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototypeV2=QFileDialog::Options options() const

$prototypeV2=QAbstractProxyModel * proxyModel() const

$prototypeV2=bool resolveSymlinks() const

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototypeV2=QByteArray saveState() const

$prototype=void selectFile ( const QString & filename )
$method=|void|selectFile|const QString &

$prototype=void selectNameFilter ( const QString & filter )
$method=|void|selectNameFilter|const QString &

$prototypeV2=QStringList selectedFiles() const

$prototypeV2=QString selectedNameFilter() const

$prototype=void setAcceptMode ( AcceptMode mode )
$method=|void|setAcceptMode|QFileDialog::AcceptMode

$prototype=void setConfirmOverwrite ( bool enabled )
$method=|void|setConfirmOverwrite|bool

$prototype=void setDefaultSuffix ( const QString & suffix )
$method=|void|setDefaultSuffix|const QString &

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

$prototype=void setFileMode ( FileMode mode )
$method=|void|setFileMode|QFileDialog::FileMode

$prototype=void setFilter ( QDir::Filters filters )
$method=|void|setFilter|QDir::Filters

$prototype=void setHistory ( const QStringList & paths )
$method=|void|setHistory|const QStringList &

$prototype=void setIconProvider ( QFileIconProvider * provider )
$method=|void|setIconProvider|QFileIconProvider *

$prototype=void setItemDelegate ( QAbstractItemDelegate * delegate )
$method=|void|setItemDelegate|QAbstractItemDelegate *

$prototype=void setLabelText ( DialogLabel label, const QString & text )
$method=|void|setLabelText|QFileDialog::DialogLabel,const QString &

$prototype=void setNameFilter ( const QString & filter )
$method=|void|setNameFilter|const QString &

$prototype=void setNameFilterDetailsVisible ( bool enabled )
$method=|void|setNameFilterDetailsVisible|bool

$prototype=void setNameFilters ( const QStringList & filters )
$method=|void|setNameFilters|const QStringList &

$prototype=void setOption ( Option option, bool on = true )
$method=|void|setOption|QFileDialog::Option,bool=true

$prototype=void setOptions ( Options options )
$method=|void|setOptions|QFileDialog::Options

$prototype=void setProxyModel ( QAbstractProxyModel * proxyModel )
$method=|void|setProxyModel|QAbstractProxyModel *

$prototype=void setReadOnly ( bool enabled )
$method=|void|setReadOnly|bool

$prototype=void setResolveSymlinks ( bool enabled )
$method=|void|setResolveSymlinks|bool

$prototype=void setSidebarUrls ( const QList<QUrl> & urls )
$method=|void|setSidebarUrls|const QList<QUrl> &

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QFileDialog::ViewMode

$prototype=QList<QUrl> sidebarUrls () const
$method=|QList<QUrl>|sidebarUrls|

$prototype=bool testOption ( Option option ) const
$method=|bool|testOption|QFileDialog::Option

$prototypeV2=QFileDialog::ViewMode viewMode() const

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=static QString getExistingDirectory ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), Options options = ShowDirsOnly )
$staticMethod=|QString|getExistingDirectory|QWidget *=0,const QString &=QString(),const QString &=QString(),QFileDialog::Options=QFileDialog::ShowDirsOnly

$prototype=static QString getOpenFileName ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
$staticMethod=|QString|getOpenFileName|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

$prototype=static QStringList getOpenFileNames ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
$staticMethod=|QStringList|getOpenFileNames|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

$prototype=static QString getSaveFileName ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
$staticMethod=|QString|getSaveFileName|QWidget *=0,const QString &=QString(),const QString &=QString(),const QString &=QString(),QString *=0,QFileDialog::Options=0

$beginSignals
$signal=|currentChanged(QString)
$signal=|directoryEntered(QString)
$signal=|fileSelected(QString)
$signal=|filesSelected(QStringList)
$signal=|filterSelected(QString)
$endSignals

#pragma ENDDUMP
