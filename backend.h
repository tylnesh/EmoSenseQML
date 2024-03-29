#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QSerialPort>
#include <QTimer>
#include <zmq.hpp>

class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString subjectId READ subjectId WRITE setSubjectId NOTIFY subjectIdChanged)
    Q_PROPERTY(int subjectAge READ subjectAge WRITE setSubjectAge NOTIFY subjectAgeChanged)
    Q_PROPERTY(QString subjectSex READ subjectSex WRITE setSubjectSex NOTIFY subjectSexChanged)


    Q_PROPERTY(QString arduinoButtonsPath READ arduinoButtonsPath WRITE setArduinoButtonsPath NOTIFY arduinoButtonsPathChanged)
    Q_PROPERTY(QString arduinoSensorsPath READ arduinoSensorsPath WRITE setArduinoSensorsPath NOTIFY arduinoSensorsPathChanged)
    Q_PROPERTY(QString affectivaIP READ affectivaIP WRITE setAffectivaIP NOTIFY affectivaIPChanged)

    Q_PROPERTY(QString picturesFolderPath READ picturesFolderPath WRITE setPicturesFolderPath NOTIFY picturesFolderPathChanged)
    Q_PROPERTY(QString videosFolderPath READ videosFolderPath WRITE setVideosFolderPath NOTIFY videosFolderPathChanged)

    Q_PROPERTY(bool isPicturesSelected READ isPicturesSelected WRITE setIsPicturesSelected NOTIFY isPicturesSelectedChanged)
    Q_PROPERTY(bool isVideosSelected READ isVideosSelected WRITE setIsVideosSelected NOTIFY isVideosSelectedChanged)

    Q_PROPERTY(QString currentPicture READ currentPicture WRITE setCurrentPicture NOTIFY currentPictureChanged)
    Q_PROPERTY(QString currentVideo READ currentVideo WRITE setCurrentVideo NOTIFY currentVideoChanged)

    Q_PROPERTY(int pictureCount READ pictureCount WRITE setPictureCount NOTIFY pictureCountChanged)

    Q_PROPERTY(int samArousal READ samArousal WRITE setSamArousal NOTIFY samArousalChanged)
    Q_PROPERTY(int samValence READ samValence WRITE setSamValence NOTIFY samValenceChanged)




public:
    explicit BackEnd(QObject *parent = nullptr);

    int pictureCount();
    //QList<int> indexes;

    QString subjectId();
    int subjectAge();
    QString subjectSex();
    int samValence();
    int samArousal();

    QString arduinoButtonsPath();
    QString arduinoSensorsPath();
    QString affectivaIP();

    QString picturesFolderPath();
    QString videosFolderPath();

    QString currentPicture();
    QString currentVideo();

    bool isPicturesSelected();
    bool isVideosSelected();

    void setPictureCount(const int &pictureCount);

    void setSubjectId(const QString &subjectId);
    void setSubjectAge(const int &subjectAge);
    void setSubjectSex(const QString &subjectSex);
    void setSamValence(const int &samValence);
    void setSamArousal(const int &samArousal);

    void setArduinoButtonsPath(const QString &arduinoButtonsPath);
    void setArduinoSensorsPath(const QString &arduinoSensorsPath);
    void setAffectivaIP(const QString &affectivaIP);

    void setPicturesFolderPath(const QString &picturesFolderPath);
    void setVideosFolderPath(const QString &videosFolderPath);

    void setIsPicturesSelected(const bool &isPicturesSelected);
    void setIsVideosSelected(const bool &isVideosSelected);

    void setCurrentPicture(const QString &currentPicture);
    void setCurrentVideo(const QString &currentVideo);

    Q_INVOKABLE QStringList availablePorts();
    Q_INVOKABLE void connectAll();
    Q_INVOKABLE QList<int> shuffleIndexes();

    void readButtons();
    void readSensors();
    void readAffectiva();

    void handleWriting();

    void handleError(QSerialPort::SerialPortError error);

   Q_INVOKABLE QList<int> getShuffledIndexes();





signals:

    void pictureCountChanged();
    void subjectIdChanged();
    void subjectAgeChanged();
    void subjectSexChanged();

    void samValenceChanged();
    void samArousalChanged();

    void arduinoButtonsPathChanged();
    void arduinoSensorsPathChanged();
    void affectivaIPChanged();

    void picturesFolderPathChanged();
    void videosFolderPathChanged();

    void isPicturesSelectedChanged();
    void isVideosSelectedChanged();

    void currentPictureChanged();
    void currentVideoChanged();


private:

    int m_pictureCount = 0;
    QString m_subjectId;
    int m_subjectAge = 0;
    QString m_subjectSex;

    int m_samValence = 0;
    int m_samArousal = 0;

    QString m_arduinoButtonsPath;
    QString m_arduinoSensorsPath;
    QString m_affectivaIP;

    QString m_picturesFolderPath;
    QString m_videosFolderPath;

    QString m_currentPicture;
    QString m_currentVideo;

    bool m_isPicturesSelected = false;
    bool m_isVideosSelected = false;

    QSerialPort *buttonsPort;
    QSerialPort *sensorsPort;

    QTimer timeoutTimer;
    QByteArray buttonData;
    QByteArray sensorsData;


    QString  m_readButtons = "NaN";
    QString m_readSensors = "NaN;NaN;NaN";
    QString m_readAffectiva = "NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN";

    QTimer m_buttonsTimer;
    QTimer m_sensorsTimer;
    QTimer m_affectivaTimer;
    QTimer m_fileWriterTimer;

    zmq::context_t *contextAffectiva;
    QString affectivaData;

protected slots:


public slots:
};

#endif // BACKEND_H


