$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDIR
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QDESIGNERFORMWINDOWCURSORINTERFACE
REQUEST QPOINT
REQUEST QWIDGET
REQUEST QDESIGNERFORMWINDOWINTERFACE
#endif

CLASS QDesignerFormWindowInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD absoluteDir
   METHOD addResourceFile
   METHOD author
   METHOD comment
   METHOD contents
   METHOD core
   METHOD cursor
   METHOD emitSelectionChanged
   METHOD exportMacro
   METHOD features
   METHOD fileName
   METHOD grid
   METHOD hasFeature
   METHOD includeHints
   METHOD isDirty
   METHOD isManaged
   METHOD layoutDefault
   METHOD mainContainer
   METHOD pixmapFunction
   METHOD removeResourceFile
   METHOD resourceFiles
   METHOD setAuthor
   METHOD setComment
   METHOD setExportMacro
   METHOD setIncludeHints
   METHOD setLayoutDefault
   METHOD setLayoutFunction
   METHOD setMainContainer
   METHOD setPixmapFunction
   METHOD clearSelection
   METHOD manageWidget
   METHOD selectWidget
   METHOD setContents1
   METHOD setContents2
   METHOD setContents
   METHOD setDirty
   METHOD setFeatures
   METHOD setFileName
   METHOD setGrid
   METHOD unmanageWidget
   METHOD findFormWindow1
   METHOD findFormWindow2
   METHOD findFormWindow

   METHOD onSelectionChanged
   METHOD onActivated
   METHOD onChanged
   METHOD onFeatureChanged
   METHOD onFileNameChanged
   METHOD onGeometryChanged
   METHOD onMainContainerChanged
   METHOD onObjectRemoved
   METHOD onWidgetManaged
   METHOD onWidgetRemoved
   METHOD onWidgetUnmanaged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerFormWindowInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDir>

$deleteMethod

/*
virtual QDir absoluteDir () const = 0
*/
$virtualMethod=|QDir|absoluteDir|

/*
virtual void addResourceFile ( const QString & path ) = 0
*/
$virtualMethod=|void|addResourceFile|const QString &

/*
virtual QString author () const = 0
*/
$virtualMethod=|QString|author|

/*
virtual QString comment () const = 0
*/
$virtualMethod=|QString|comment|

/*
virtual QString contents () const = 0
*/
$virtualMethod=|QString|contents|

/*
virtual QDesignerFormEditorInterface * core () const
*/
$virtualMethod=|QDesignerFormEditorInterface *|core|

/*
virtual QDesignerFormWindowCursorInterface * cursor () const = 0
*/
$virtualMethod=|QDesignerFormWindowCursorInterface *|cursor|

/*
virtual void emitSelectionChanged () = 0
*/
$virtualMethod=|void|emitSelectionChanged|

/*
virtual QString exportMacro () const = 0
*/
$virtualMethod=|QString|exportMacro|

/*
virtual Feature features () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FEATURES )
{
  QDesignerFormWindowInterface * obj = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->features () );
  }
}

/*
virtual QString fileName () const = 0
*/
$virtualMethod=|QString|fileName|

/*
virtual QPoint grid () const = 0
*/
$virtualMethod=|QPoint|grid|

/*
virtual bool hasFeature ( Feature feature ) const = 0
*/
$virtualMethod=|bool|hasFeature|QDesignerFormWindowInterface::Feature

/*
virtual QStringList includeHints () const = 0
*/
$virtualMethod=|QStringList|includeHints|

/*
virtual bool isDirty () const = 0
*/
$virtualMethod=|bool|isDirty|

/*
virtual bool isManaged ( QWidget * widget ) const = 0
*/
$virtualMethod=|bool|isManaged|QWidget *

/*
virtual void layoutDefault ( int * margin, int * spacing ) = 0
*/
$virtualMethod=|void|layoutDefault|int *,int *

/*
virtual QWidget * mainContainer () const = 0
*/
$virtualMethod=|QWidget *|mainContainer|

/*
virtual QString pixmapFunction () const = 0
*/
$virtualMethod=|QString|pixmapFunction|

/*
virtual void removeResourceFile ( const QString & path ) = 0
*/
$virtualMethod=|void|removeResourceFile|const QString &

/*
virtual QStringList resourceFiles () const = 0
*/
$virtualMethod=|QStringList|resourceFiles|

/*
virtual void setAuthor ( const QString & author ) = 0
*/
$virtualMethod=|void|setAuthor|const QString &

/*
virtual void setComment ( const QString & comment ) = 0
*/
$virtualMethod=|void|setComment|const QString &

/*
virtual void setExportMacro ( const QString & exportMacro ) = 0
*/
$virtualMethod=|void|setExportMacro|const QString &

/*
virtual void setIncludeHints ( const QStringList & includeHints ) = 0
*/
$virtualMethod=|void|setIncludeHints|const QStringList &

/*
virtual void setLayoutDefault ( int margin, int spacing ) = 0
*/
$virtualMethod=|void|setLayoutDefault|int,int

/*
virtual void setLayoutFunction ( const QString & margin, const QString & spacing ) = 0
*/
$virtualMethod=|void|setLayoutFunction|const QString &,const QString &

/*
virtual void setMainContainer ( QWidget * mainContainer ) = 0
*/
$virtualMethod=|void|setMainContainer|QWidget *

/*
virtual void setPixmapFunction ( const QString & pixmapFunction ) = 0
*/
$virtualMethod=|void|setPixmapFunction|const QString &

/*
virtual void clearSelection ( bool update = true ) = 0
*/
$virtualMethod=|void|clearSelection|bool=true

/*
virtual void manageWidget ( QWidget * widget ) = 0
*/
$virtualMethod=|void|manageWidget|QWidget *

/*
virtual void selectWidget ( QWidget * widget, bool select = true ) = 0
*/
$virtualMethod=|void|selectWidget|QWidget *,bool=true

/*
virtual void setContents ( QIODevice * device ) = 0
*/
$virtualMethod=|void|setContents,setContents1|QIODevice *

/*
virtual void setContents ( const QString & contents ) = 0
*/
$virtualMethod=|void|setContents,setContents2|const QString &

//[1]virtual void setContents ( QIODevice * device ) = 0
//[2]virtual void setContents ( const QString & contents ) = 0

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS2 );
  }
}

/*
virtual void setDirty ( bool dirty ) = 0
*/
$virtualMethod=|void|setDirty|bool

/*
virtual void setFeatures ( Feature features ) = 0
*/
$virtualMethod=|void|setFeatures|QDesignerFormWindowInterface::Feature

/*
virtual void setFileName ( const QString & fileName ) = 0
*/
$virtualMethod=|void|setFileName|const QString &

/*
virtual void setGrid ( const QPoint & grid ) = 0
*/
$virtualMethod=|void|setGrid|const QPoint &

/*
virtual void unmanageWidget ( QWidget * widget ) = 0
*/
$virtualMethod=|void|unmanageWidget|QWidget *

/*
static QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
*/
$staticMethod=|QDesignerFormWindowInterface *|findFormWindow,findFormWindow1|QWidget *

/*
static QDesignerFormWindowInterface * findFormWindow ( QObject * object )
*/
$staticMethod=|QDesignerFormWindowInterface *|findFormWindow,findFormWindow2|QObject *

//[1]QDesignerFormWindowInterface * findFormWindow ( QWidget * widget )
//[2]QDesignerFormWindowInterface * findFormWindow ( QObject * object )

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW2 );
  }
}

#pragma ENDDUMP
