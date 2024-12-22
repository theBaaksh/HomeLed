#ifndef SOCKETINTERLAYER_H
#define SOCKETINTERLAYER_H

#include <QObject>
#include <QUdpSocket>
#include <QHostAddress>

class SocketInterlayer : public QObject
{
    Q_OBJECT
public:
    explicit SocketInterlayer();

    static SocketInterlayer* interLayer();

public slots:
    void writeData(QString data);

private:
    static SocketInterlayer *socketInterLayer;
    QUdpSocket *socket;

    quint16 port;
    QHostAddress IP;

private slots:
    void onReadyRead();

};

#endif // SOCKETINTERLAYER_H
