#ifndef LEDMODECONTROLLER_H
#define LEDMODECONTROLLER_H

#include <QObject>
#include "service.h"

class LedModeController : public QObject
{
    Q_OBJECT
public:
    explicit LedModeController(QObject *parent = nullptr);

    Q_INVOKABLE void setBrightness(int value);
    Q_INVOKABLE void setColorTemperature(int value);

private:
    int colorTemperature;
    int brightenss;
    int r;
    int g;
    int b;
    void tempToG();
    void tempToB();
    void updateMode();

signals:

};

#endif // LEDMODECONTROLLER_H
