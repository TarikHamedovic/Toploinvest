#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>
#include <QtCore/qhash.h>
#include <QtCore/qstring.h>

namespace QmlCacheGeneratedCode {
namespace _0x5f_Toploinvest_Main_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::TypedFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Toploinvest_Konfiguracija_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::TypedFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Toploinvest_PostavkeAlarma_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::TypedFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Toploinvest_LogiranjeIPrikazAlarma_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::TypedFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _0x5f_Toploinvest_OpsteUpravljanjeINadgledanje_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::TypedFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
    resourcePathToCachedUnit.insert(QStringLiteral("/Toploinvest/Main.qml"), &QmlCacheGeneratedCode::_0x5f_Toploinvest_Main_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Toploinvest/Konfiguracija.qml"), &QmlCacheGeneratedCode::_0x5f_Toploinvest_Konfiguracija_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Toploinvest/PostavkeAlarma.qml"), &QmlCacheGeneratedCode::_0x5f_Toploinvest_PostavkeAlarma_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Toploinvest/LogiranjeIPrikazAlarma.qml"), &QmlCacheGeneratedCode::_0x5f_Toploinvest_LogiranjeIPrikazAlarma_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/Toploinvest/OpsteUpravljanjeINadgledanje.qml"), &QmlCacheGeneratedCode::_0x5f_Toploinvest_OpsteUpravljanjeINadgledanje_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.structVersion = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appToploinvest)() {
    ::unitRegistry();
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appToploinvest))
int QT_MANGLE_NAMESPACE(qCleanupResources_qmlcache_appToploinvest)() {
    return 1;
}
