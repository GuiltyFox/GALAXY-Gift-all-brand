.class public Lcom/samsung/privilege/util/DC;
.super Ljava/lang/Object;
.source "DC.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CKXXX(Landroid/content/Context;)Z
    .registers 10
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 27
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "Android/data/com.sys.data"

    invoke-static {v7}, Lcom/samsung/privilege/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .local v5, "root":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_18

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_18
    new-instance v3, Ljava/io/File;

    const-string v6, "data1.sys"

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v3, "gpxfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_14f

    move-result v6

    if-eqz v6, :cond_149

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "blnchanged":Z
    :try_start_2a
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 36
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_39
    :goto_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_46

    .line 70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 75
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v4    # "line":Ljava/lang/String;
    :goto_42
    if-eqz v0, :cond_14c

    .line 76
    const/4 v6, 0x0

    .line 85
    .end local v0    # "blnchanged":Z
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    :goto_45
    return v6

    .line 39
    .restart local v0    # "blnchanged":Z
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "root":Ljava/io/File;
    :cond_46
    if-eqz v4, :cond_39

    .line 40
    const-string v6, "rd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rd"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 42
    const/4 v0, 0x1

    .line 44
    goto :goto_39

    :cond_73
    const-string v6, "ad"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ad"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 46
    const/4 v0, 0x1

    .line 48
    goto :goto_39

    :cond_9e
    const-string v6, "mf"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mf"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 50
    const/4 v0, 0x1

    .line 52
    goto/16 :goto_39

    :cond_ca
    const-string v6, "dm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dm"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 54
    const/4 v0, 0x1

    .line 56
    goto/16 :goto_39

    :cond_f6
    const-string v6, "wa"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "wa"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getWifiAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_39

    .line 71
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v4    # "line":Ljava/lang/String;
    :catch_11e
    move-exception v6

    goto/16 :goto_42

    .line 60
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_121
    const-string v6, "sn"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sn"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_147} :catch_11e

    goto/16 :goto_39

    .line 79
    .end local v0    # "blnchanged":Z
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v4    # "line":Ljava/lang/String;
    :cond_149
    :try_start_149
    invoke-static {p0}, Lcom/samsung/privilege/util/DC;->SL(Landroid/content/Context;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14c} :catch_14f

    .line 85
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    :cond_14c
    :goto_14c
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 81
    :catch_14f
    move-exception v6

    goto :goto_14c
.end method

.method public static GL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "Android/data/com.sys.data"

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v4, "root":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_18

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_18
    new-instance v2, Ljava/io/File;

    const-string v5, "data1.sys"

    invoke-static {v5}, Lcom/samsung/privilege/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v2, "gpxfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_58

    move-result v5

    if-eqz v5, :cond_55

    .line 97
    :try_start_29
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_3f

    .line 107
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_51

    .line 112
    const-string v5, ""

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "gpxfile":Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "root":Ljava/io/File;
    :goto_3e
    return-object v5

    .line 100
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "gpxfile":Ljava/io/File;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "root":Ljava/io/File;
    :cond_3f
    if-eqz v3, :cond_33

    .line 101
    :try_start_41
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 102
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/util/DC;->UnicodeToString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4f} :catch_51

    move-result-object v5

    goto :goto_3e

    .line 108
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_51
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, ""

    goto :goto_3e

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_55
    const-string v5, ""

    goto :goto_3e

    .line 116
    .end local v2    # "gpxfile":Ljava/io/File;
    .end local v4    # "root":Ljava/io/File;
    :catch_58
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, ""

    goto :goto_3e
.end method

.method public static SL(Landroid/content/Context;)V
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 123
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "Android/data/com.sys.data"

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_18

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_18
    new-instance v1, Ljava/io/File;

    const-string v5, "data1.sys"

    invoke-static {v5}, Lcom/samsung/privilege/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v1, "gpxfile":Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 130
    .local v4, "writer":Ljava/io/FileWriter;
    new-instance v0, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v3, ""

    .line 132
    .local v3, "strdata":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "rd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "ad"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "mf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "dm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "wa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getWifiAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "sn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 140
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_117} :catch_118

    .line 144
    .end local v0    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v1    # "gpxfile":Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "strdata":Ljava/lang/String;
    .end local v4    # "writer":Ljava/io/FileWriter;
    :goto_117
    return-void

    .line 141
    :catch_118
    move-exception v5

    goto :goto_117
.end method

.method public static UnicodeToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "Hex"    # Ljava/lang/String;

    .prologue
    .line 181
    :try_start_0
    const-string v4, "\\u"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, "enUnicode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 186
    .local v0, "deUnicode":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_12

    .line 206
    .end local v0    # "deUnicode":Ljava/lang/String;
    .end local v2    # "enUnicode":Ljava/lang/String;
    .end local v3    # "i":I
    :goto_11
    return-object v0

    .line 187
    .restart local v0    # "deUnicode":Ljava/lang/String;
    .restart local v2    # "enUnicode":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_12
    if-nez v2, :cond_38

    .line 188
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 192
    :goto_1c
    rem-int/lit8 v4, v3, 0x4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_35

    .line 193
    if-eqz v2, :cond_34

    .line 194
    if-nez v0, :cond_4e

    .line 195
    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_34
    :goto_34
    const/4 v2, 0x0

    .line 186
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 190
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 197
    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6f

    move-result-object v0

    goto :goto_34

    .line 205
    .end local v0    # "deUnicode":Ljava/lang/String;
    .end local v2    # "enUnicode":Ljava/lang/String;
    .end local v3    # "i":I
    :catch_6f
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, p0

    .line 206
    goto :goto_11
.end method

.method private static byteToHex(B)Ljava/lang/String;
    .registers 3
    .param p0, "b"    # B

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v1, p0, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static charToHex(C)Ljava/lang/String;
    .registers 5
    .param p0, "c"    # C

    .prologue
    .line 162
    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v0, v2

    .line 163
    .local v0, "hi":B
    and-int/lit16 v2, p0, 0xff

    int-to-byte v1, v2

    .line 164
    .local v1, "lo":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/privilege/util/DC;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/privilege/util/DC;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 169
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 170
    .local v2, "utf8":[B
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_11

    .end local p0    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    move-object p0, v1

    .line 175
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "utf8":[B
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local p0    # "s":Ljava/lang/String;
    :goto_e
    return-object p0

    .line 172
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_f
    move-exception v0

    .line 173
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_e

    .line 174
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_11
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_e
.end method

.method public static parseUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 v2, 0x0

    .line 154
    :cond_3
    return-object v2

    .line 149
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 150
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 152
    .local v0, "c":C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/privilege/util/DC;->charToHex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static showDialogMessage(Landroid/content/Context;)V
    .registers 10
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 211
    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_88

    .line 212
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 214
    .local v1, "dialogMessage":Landroid/app/Dialog;
    const v7, 0x7f0300e0

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 216
    const v7, 0x7f480002

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 217
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v7, 0x7f480004

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 218
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f480005

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 219
    .local v3, "imgClose":Landroid/widget/ImageView;
    const v7, 0x7f480006

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 221
    .local v4, "tvClose":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 222
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 224
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 228
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 230
    const-string v7, "Something went wrong!\nAnd we can not processing your request!"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v7, Lcom/samsung/privilege/util/DC$1;

    invoke-direct {v7, v1}, Lcom/samsung/privilege/util/DC$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 239
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 240
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 242
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 244
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogMessage":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgClose":Landroid/widget/ImageView;
    .end local v4    # "tvClose":Landroid/widget/TextView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    :cond_88
    return-void
.end method
