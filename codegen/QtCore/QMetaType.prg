$header

#include "hbclass.ch"

CLASS QMetaType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD registerTypedef
   METHOD type
   METHOD typeName
   METHOD isRegistered
   METHOD construct
   METHOD destroy
   METHOD unregisterType
   METHOD save
   METHOD load

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMetaType>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=static int registerTypedef(const char *typeName, int aliasId)
$staticMethod=|int|registerTypedef|const char *,int

$prototype=static int type(const char *typeName)
$staticMethod=|int|type|const char *

$prototype=static const char *typeName(int type)
$staticMethod=|const char *|typeName|int

$prototype=static bool isRegistered(int type)
$staticMethod=|bool|isRegistered|int

$prototype=static void *construct(int type, const void *copy = 0)
$staticMethod=|void *|construct|int,const void *=0

$prototype=static void destroy(int type, void *data)
$staticMethod=|void|destroy|int,void *

$prototype=static void unregisterType(const char *typeName)
$staticMethod=|void|unregisterType|const char *

$prototype=static bool save(QDataStream &stream, int type, const void *data)
$staticMethod=|bool|save|QDataStream &,int,const void *

$prototype=static bool load(QDataStream &stream, int type, void *data)
$staticMethod=|bool|load|QDataStream &,int,void *

$extraMethods

#pragma ENDDUMP
