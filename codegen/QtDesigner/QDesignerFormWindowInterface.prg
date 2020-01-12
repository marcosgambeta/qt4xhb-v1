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

$prototype=virtual QDir absoluteDir () const = 0
$virtualMethod=|QDir|absoluteDir|

$prototype=virtual void addResourceFile ( const QString & path ) = 0
$virtualMethod=|void|addResourceFile|const QString &

$prototype=virtual QString author () const = 0
$virtualMethod=|QString|author|

$prototype=virtual QString comment () const = 0
$virtualMethod=|QString|comment|

$prototype=virtual QString contents () const = 0
$virtualMethod=|QString|contents|

$prototype=virtual QDesignerFormEditorInterface * core () const
$virtualMethod=|QDesignerFormEditorInterface *|core|

$prototype=virtual QDesignerFormWindowCursorInterface * cursor () const = 0
$virtualMethod=|QDesignerFormWindowCursorInterface *|cursor|

$prototype=virtual void emitSelectionChanged () = 0
$virtualMethod=|void|emitSelectionChanged|

$prototype=virtual QString exportMacro () const = 0
$virtualMethod=|QString|exportMacro|

$prototype=virtual Feature features () const = 0
$virtualMethod=|QDesignerFormWindowInterface::Feature|features|

$prototype=virtual QString fileName () const = 0
$virtualMethod=|QString|fileName|

$prototype=virtual QPoint grid () const = 0
$virtualMethod=|QPoint|grid|

$prototype=virtual bool hasFeature ( Feature feature ) const = 0
$virtualMethod=|bool|hasFeature|QDesignerFormWindowInterface::Feature

$prototype=virtual QStringList includeHints () const = 0
$virtualMethod=|QStringList|includeHints|

$prototype=virtual bool isDirty () const = 0
$virtualMethod=|bool|isDirty|

$prototype=virtual bool isManaged ( QWidget * widget ) const = 0
$virtualMethod=|bool|isManaged|QWidget *

$prototype=virtual void layoutDefault ( int * margin, int * spacing ) = 0
$virtualMethod=|void|layoutDefault|int *,int *

$prototype=virtual QWidget * mainContainer () const = 0
$virtualMethod=|QWidget *|mainContainer|

$prototype=virtual QString pixmapFunction () const = 0
$virtualMethod=|QString|pixmapFunction|

$prototype=virtual void removeResourceFile ( const QString & path ) = 0
$virtualMethod=|void|removeResourceFile|const QString &

$prototype=virtual QStringList resourceFiles () const = 0
$virtualMethod=|QStringList|resourceFiles|

$prototype=virtual void setAuthor ( const QString & author ) = 0
$virtualMethod=|void|setAuthor|const QString &

$prototype=virtual void setComment ( const QString & comment ) = 0
$virtualMethod=|void|setComment|const QString &

$prototype=virtual void setExportMacro ( const QString & exportMacro ) = 0
$virtualMethod=|void|setExportMacro|const QString &

$prototype=virtual void setIncludeHints ( const QStringList & includeHints ) = 0
$virtualMethod=|void|setIncludeHints|const QStringList &

$prototype=virtual void setLayoutDefault ( int margin, int spacing ) = 0
$virtualMethod=|void|setLayoutDefault|int,int

$prototype=virtual void setLayoutFunction ( const QString & margin, const QString & spacing ) = 0
$virtualMethod=|void|setLayoutFunction|const QString &,const QString &

$prototype=virtual void setMainContainer ( QWidget * mainContainer ) = 0
$virtualMethod=|void|setMainContainer|QWidget *

$prototype=virtual void setPixmapFunction ( const QString & pixmapFunction ) = 0
$virtualMethod=|void|setPixmapFunction|const QString &

$prototype=virtual void clearSelection ( bool update = true ) = 0
$virtualMethod=|void|clearSelection|bool=true

$prototype=virtual void manageWidget ( QWidget * widget ) = 0
$virtualMethod=|void|manageWidget|QWidget *

$prototype=virtual void selectWidget ( QWidget * widget, bool select = true ) = 0
$virtualMethod=|void|selectWidget|QWidget *,bool=true

$prototype=virtual void setContents ( QIODevice * device ) = 0
$internalVirtualMethod=|void|setContents,setContents1|QIODevice *

$prototype=virtual void setContents ( const QString & contents ) = 0
$internalVirtualMethod=|void|setContents,setContents2|const QString &

//[1]virtual void setContents ( QIODevice * device ) = 0
//[2]virtual void setContents ( const QString & contents ) = 0

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

$prototype=virtual void setDirty ( bool dirty ) = 0
$virtualMethod=|void|setDirty|bool

$prototype=virtual void setFeatures ( Feature features ) = 0
$virtualMethod=|void|setFeatures|QDesignerFormWindowInterface::Feature

$prototype=virtual void setFileName ( const QString & fileName ) = 0
$virtualMethod=|void|setFileName|const QString &

$prototype=virtual void setGrid ( const QPoint & grid ) = 0
$virtualMethod=|void|setGrid|const QPoint &

$prototype=virtual void unmanageWidget ( QWidget * widget ) = 0
$virtualMethod=|void|unmanageWidget|QWidget *

$prototype=static QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
$internalStaticMethod=|QDesignerFormWindowInterface *|findFormWindow,findFormWindow1|QWidget *

$prototype=static QDesignerFormWindowInterface * findFormWindow ( QObject * object )
$internalStaticMethod=|QDesignerFormWindowInterface *|findFormWindow,findFormWindow2|QObject *

//[1]QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
//[2]QDesignerFormWindowInterface * findFormWindow ( QObject * object )

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
