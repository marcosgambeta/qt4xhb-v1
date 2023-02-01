/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_ACTIVEQT_H
#define QT4XHB_MACROS_ACTIVEQT_H

#define ISQAXBASE( n )                                      Qt4xHb::isObjectDerivedFrom( n, "QAxBase" )
#define ISQAXBINDABLE( n )                                  Qt4xHb::isObjectDerivedFrom( n, "QAxBindable" )
#define ISQAXFACTORY( n )                                   Qt4xHb::isObjectDerivedFrom( n, "QAxFactory" )
#define ISQAXOBJECT( n )                                    Qt4xHb::isObjectDerivedFrom( n, "QAxObject" )
#define ISQAXSCRIPT( n )                                    Qt4xHb::isObjectDerivedFrom( n, "QAxScript" )
#define ISQAXSCRIPTENGINE( n )                              Qt4xHb::isObjectDerivedFrom( n, "QAxScriptEngine" )
#define ISQAXSCRIPTMANAGER( n )                             Qt4xHb::isObjectDerivedFrom( n, "QAxScriptManager" )
#define ISQAXWIDGET( n )                                    Qt4xHb::isObjectDerivedFrom( n, "QAxWidget" )

#define PQAXBASE( n )                                       static_cast< QAxBase * >( Qt4xHb::itemGetPtr( n ) )
#define PQAXBINDABLE( n )                                   static_cast< QAxBindable * >( Qt4xHb::itemGetPtr( n ) )
#define PQAXFACTORY( n )                                    static_cast< QAxFactory * >( Qt4xHb::itemGetPtr( n ) )
#define PQAXOBJECT( n )                                     static_cast< QAxObject * >( Qt4xHb::itemGetPtr( n ) )
#define PQAXSCRIPT( n )                                     static_cast< QAxScript * >( Qt4xHb::itemGetPtr( n ) )
#define PQAXSCRIPTENGINE( n )                               static_cast< QAxScriptEngine * >( Qt4xHb::itemGetPtr( n ) )
#define PQAXSCRIPTMANAGER( n )                              static_cast< QAxScriptManager * >( Qt4xHb::itemGetPtr( n ) )
#define PQAXWIDGET( n )                                     static_cast< QAxWidget * >( Qt4xHb::itemGetPtr( n ) )

#define OPQAXBASE( n, v )                                   HB_ISNIL( n ) ? v : static_cast< QAxBase * >( Qt4xHb::itemGetPtr( n ) )
#define OPQAXBINDABLE( n, v )                               HB_ISNIL( n ) ? v : static_cast< QAxBindable * >( Qt4xHb::itemGetPtr( n ) )
#define OPQAXFACTORY( n, v )                                HB_ISNIL( n ) ? v : static_cast< QAxFactory * >( Qt4xHb::itemGetPtr( n ) )
#define OPQAXOBJECT( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QAxObject * >( Qt4xHb::itemGetPtr( n ) )
#define OPQAXSCRIPT( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QAxScript * >( Qt4xHb::itemGetPtr( n ) )
#define OPQAXSCRIPTENGINE( n, v )                           HB_ISNIL( n ) ? v : static_cast< QAxScriptEngine * >( Qt4xHb::itemGetPtr( n ) )
#define OPQAXSCRIPTMANAGER( n, v )                          HB_ISNIL( n ) ? v : static_cast< QAxScriptManager * >( Qt4xHb::itemGetPtr( n ) )
#define OPQAXWIDGET( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QAxWidget * >( Qt4xHb::itemGetPtr( n ) )

#endif /* QT4XHB_MACROS_ACTIVEQT_H */