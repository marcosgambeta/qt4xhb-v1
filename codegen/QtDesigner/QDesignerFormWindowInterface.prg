%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDir>
#include <QtDesigner/QDesignerFormEditorInterface>

$deleteMethod

$prototypeV2=virtual QDir absoluteDir() const = 0

$prototypeV2=virtual void addResourceFile( const QString & path ) = 0

$prototypeV2=virtual QString author() const = 0

$prototypeV2=virtual QString comment() const = 0

$prototypeV2=virtual QString contents() const = 0

$prototypeV2=virtual QDesignerFormEditorInterface * core() const

$prototypeV2=virtual QDesignerFormWindowCursorInterface * cursor() const = 0

$prototypeV2=virtual void emitSelectionChanged() = 0

$prototypeV2=virtual QString exportMacro() const = 0

$prototypeV2=virtual QDesignerFormWindowInterface::Feature features() const = 0

$prototypeV2=virtual QString fileName() const = 0

$prototypeV2=virtual QPoint grid() const = 0

$prototypeV2=virtual bool hasFeature( QDesignerFormWindowInterface::Feature feature ) const = 0

$prototypeV2=virtual QStringList includeHints() const = 0

$prototypeV2=virtual bool isDirty() const = 0

$prototypeV2=virtual bool isManaged( QWidget * widget ) const = 0

$prototypeV2=virtual void layoutDefault( int * margin, int * spacing ) = 0

$prototypeV2=virtual QWidget * mainContainer() const = 0

$prototypeV2=virtual QString pixmapFunction() const = 0

$prototypeV2=virtual void removeResourceFile( const QString & path ) = 0

$prototypeV2=virtual QStringList resourceFiles() const = 0

$prototypeV2=virtual void setAuthor( const QString & author ) = 0

$prototypeV2=virtual void setComment( const QString & comment ) = 0

$prototypeV2=virtual void setExportMacro( const QString & exportMacro ) = 0

$prototypeV2=virtual void setIncludeHints( const QStringList & includeHints ) = 0

$prototypeV2=virtual void setLayoutDefault( int margin, int spacing ) = 0

$prototypeV2=virtual void setLayoutFunction( const QString & margin, const QString & spacing ) = 0

$prototypeV2=virtual void setMainContainer( QWidget * mainContainer ) = 0

$prototypeV2=virtual void setPixmapFunction( const QString & pixmapFunction ) = 0

$prototype=virtual void clearSelection ( bool update = true ) = 0
$virtualMethod=|void|clearSelection|bool=true

$prototypeV2=virtual void manageWidget( QWidget * widget ) = 0

$prototype=virtual void selectWidget ( QWidget * widget, bool select = true ) = 0
$virtualMethod=|void|selectWidget|QWidget *,bool=true

$prototype=virtual void setContents ( QIODevice * device ) = 0
$internalVirtualMethod=|void|setContents,setContents1|QIODevice *

$prototype=virtual void setContents ( const QString & contents ) = 0
$internalVirtualMethod=|void|setContents,setContents2|const QString &

/*
[1]virtual void setContents ( QIODevice * device ) = 0
[2]virtual void setContents ( const QString & contents ) = 0
*/

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QDesignerFormWindowInterface_setContents1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDesignerFormWindowInterface_setContents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setContents

$prototypeV2=virtual void setDirty( bool dirty ) = 0

$prototypeV2=virtual void setFeatures( QDesignerFormWindowInterface::Feature features ) = 0

$prototypeV2=virtual void setFileName( const QString & fileName ) = 0

$prototypeV2=virtual void setGrid( const QPoint & grid ) = 0

$prototypeV2=virtual void unmanageWidget( QWidget * widget ) = 0

$prototype=static QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
$internalStaticMethod=|QDesignerFormWindowInterface *|findFormWindow,findFormWindow1|QWidget *

$prototype=static QDesignerFormWindowInterface * findFormWindow ( QObject * object )
$internalStaticMethod=|QDesignerFormWindowInterface *|findFormWindow,findFormWindow2|QObject *

/*
[1]QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
[2]QDesignerFormWindowInterface * findFormWindow ( QObject * object )
*/

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QDesignerFormWindowInterface_findFormWindow1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QDesignerFormWindowInterface_findFormWindow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=findFormWindow

$beginSignals
$signal=|aboutToUnmanageWidget(QWidget*)
$signal=|activated(QWidget*)
$signal=|changed()
$signal=|featureChanged(QDesignerFormWindowInterface::Feature)
$signal=|fileNameChanged(QString)
$signal=|geometryChanged()
$signal=|mainContainerChanged(QWidget*)
$signal=|objectRemoved(QObject*)
$signal=|resourceFilesChanged()
$signal=|selectionChanged()
$signal=|widgetManaged(QWidget*)
$signal=|widgetRemoved(QWidget*)
$signal=|widgetUnmanaged(QWidget*)
$endSignals

#pragma ENDDUMP
