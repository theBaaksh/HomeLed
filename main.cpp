#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "monomodeController.h"
#include "noisemodeController.h"
#include "rainbowmodeController.h"
#include "ledmodeController.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    qmlRegisterType<MonoModeController>("MonoModeController", 1, 0, "MonoModeController");
    qmlRegisterType<NoiseModeController>("NoiseModeController", 1, 0, "NoiseModeController");
    qmlRegisterType<RainbowModeController>("RainbowModeController", 1, 0, "RainbowModeController");
    qmlRegisterType<LedModeController>("LedModeController", 1, 0, "LedModeController");
    engine.load(url);
    return app.exec();
}
