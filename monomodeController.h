#ifndef MONOMODECONTROLLER_H
#define MONOMODECONTROLLER_H

#include <QObject>

class MonoModeController : public QObject
{
    Q_OBJECT
public:
    explicit MonoModeController(QObject *parent = nullptr);

    Q_INVOKABLE void setR(int value);
    Q_INVOKABLE void setG(int value);
    Q_INVOKABLE void setB(int value);
    Q_INVOKABLE void setBrightness(int value);

private:
    int r;
    int g;
    int b;
    int brightness;
    void updateMode();

signals:

};

#endif // MONOMODECONTROLLER_H
