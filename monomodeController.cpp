#include "monomodeController.h"
#include "service.h"
#include "socketinterlayer.h"

MonoModeController::MonoModeController(QObject *parent)
    : QObject{parent}
{
    r = g = b = brightness = 0;
}

void MonoModeController::setR(int value)
{
    r = Service::toNormalizedValue(value);
    updateMode();
}

void MonoModeController::setG(int value)
{
    g = Service::toNormalizedValue(value);
    updateMode();
}

void MonoModeController::setB(int value)
{
    b = Service::toNormalizedValue(value);
    updateMode();
}

void MonoModeController::setBrightness(int value)
{
    brightness = Service::toNormalizedValue(value);
    updateMode();
}

void MonoModeController::updateMode()
{
    QString data = "";
    data += QString::number(0xA) += "/";
    data += QString::number(r) += "/";
    data += QString::number(g) += "/";
    data += QString::number(b) += "/";
    data += QString::number(brightness);

    SocketInterlayer::interLayer()->writeData(data);
}
