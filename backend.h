#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QSerialPort>
#include <QTimer>
#include <zmq.hpp>

class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString subjectName READ subjectName WRITE setSubjectName NOTIFY subjectNameChanged)
    Q_PROPERTY(int subjectAge READ subjectAge WRITE setSubjectAge NOTIFY subjectAgeChanged)

    Q_PROPERTY(QString arduinoButtonsPath READ arduinoButtonsPath WRITE setArduinoButtonsPath NOTIFY arduinoButtonsPathChanged)
    Q_PROPERTY(QString arduinoSensorsPath READ arduinoSensorsPath WRITE setArduinoSensorsPath NOTIFY arduinoSensorsPathChanged)
    Q_PROPERTY(QString affectivaIP READ affectivaIP WRITE setAffectivaIP NOTIFY affectivaIPChanged)

    Q_PROPERTY(QString picturesFolderPath READ picturesFolderPath WRITE setPicturesFolderPath NOTIFY picturesFolderPathChanged)
    Q_PROPERTY(QString videosFolderPath READ videosFolderPath WRITE setVideosFolderPath NOTIFY videosFolderPathChanged)

    Q_PROPERTY(bool isPicturesSelected READ isPicturesSelected WRITE setIsPicturesSelected NOTIFY isPicturesSelectedChanged)
    Q_PROPERTY(bool isVideosSelected READ isVideosSelected WRITE setIsVideosSelected NOTIFY isVideosSelectedChanged)




public:
    explicit BackEnd(QObject *parent = nullptr);

    QString subjectName();
    int subjectAge();

    QString arduinoButtonsPath();
    QString arduinoSensorsPath();
    QString affectivaIP();

    QString picturesFolderPath();
    QString videosFolderPath();

    bool isPicturesSelected();
    bool isVideosSelected();

    void setSubjectName(const QString &subjectName);
    void setSubjectAge(const int &subjectAge);

    void setArduinoButtonsPath(const QString &arduinoButtonsPath);
    void setArduinoSensorsPath(const QString &arduinoSensorsPath);
    void setAffectivaIP(const QString &affectivaIP);

    void setPicturesFolderPath(const QString &picturesFolderPath);
    void setVideosFolderPath(const QString &videosFolderPath);

    void setIsPicturesSelected(const bool &isPicturesSelected);
    void setIsVideosSelected(const bool &isVideosSelected);

    Q_INVOKABLE QStringList availablePorts();
    Q_INVOKABLE void connectAll();

    void readButtons();
    void readSensors();
    void readAffectiva();

    void handleButtonsTimeout();
    void handleSensorsTimeout();
    void handleAffectivaTimeout();

    void handleError(QSerialPort::SerialPortError error);


signals:
    void subjectNameChanged();
    void subjectAgeChanged();

    void arduinoButtonsPathChanged();
    void arduinoSensorsPathChanged();
    void affectivaIPChanged();

    void picturesFolderPathChanged();
    void videosFolderPathChanged();

    void isPicturesSelectedChanged();
    void isVideosSelectedChanged();

private:
    QString m_subjectName;
    int m_subjectAge = 0;

    QString m_arduinoButtonsPath;
    QString m_arduinoSensorsPath;
    QString m_affectivaIP;

    QString m_picturesFolderPath;
    QString m_videosFolderPath;

    bool m_isPicturesSelected = false;
    bool m_isVideosSelected = false;

    QSerialPort *buttonsPort;
    QSerialPort *sensorsPort;

    QTimer timeoutTimer;
    QByteArray buttonData;
    QByteArray sensorsData;


    QString  m_readButtons;
    QString m_readSensors;
    QString m_readAffectiva;

    QTimer m_buttonsTimer;
    QTimer m_sensorsTimer;
    QTimer m_affectivaTimer;
    QTimer m_fileWriterTimer;

    zmq::context_t *contextAffectiva;


 //   zmq::socket_t *subscriber;

    QString affectivaData;

protected slots:


public slots:
};

#endif // BACKEND_H
