#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "backend.h"
//#include <QProcess>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    qmlRegisterType<BackEnd>("com.tylnesh.backend", 1, 0, "BackEnd");



   // QProcess::start("/bin/bash /home/emosense/aff.sh");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
