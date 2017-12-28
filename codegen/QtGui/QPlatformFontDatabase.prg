$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONTENGINE
#endif

CLASS QPlatformFontDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addApplicationFont
   METHOD fontDir
   METHOD fontEngine
   METHOD populateFontDatabase
   METHOD releaseHandle
   METHOD registerFont
   METHOD registerQPF2Font

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPlatformFontDatabase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QStringList addApplicationFont ( const QByteArray & fontData, const QString & fileName )
$virtualMethod=|QStringList|addApplicationFont|const QByteArray &,const QString &

$prototype=virtual QString fontDir () const
$virtualMethod=|QString|fontDir|

$prototype=virtual QFontEngine * fontEngine ( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
$virtualMethod=|QFontEngine *|fontEngine|const QByteArray &,qreal,QFont::HintingPreference

$prototype=virtual void populateFontDatabase ()
$virtualMethod=|void|populateFontDatabase|

$prototype=virtual void releaseHandle ( void * handle )
$virtualMethod=|void|releaseHandle|void *

$prototype=static void registerFont ( const QString & familyName, const QString & foundryName, QFont::Weight weight, QFont::Style style, QFont::Stretch stretch, bool antialiased, bool scalable, int pixelSize, const QSupportedWritingSystems & writingSystems, void * usrPtr )
$static Method=|void|registerFont|const QString &,const QString &,QFont::Weight,QFont::Style,QFont::Stretch,bool,bool,int,const QSupportedWritingSystems &,void *

$prototype=static void registerQPF2Font ( const QByteArray & dataArray, void * handle )
$staticMethod=|void|registerQPF2Font|const QByteArray &,void *

$extraMethods

#pragma ENDDUMP
