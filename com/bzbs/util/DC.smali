.class public Lcom/bzbs/util/DC;
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

.method public static CK(Landroid/content/Context;)Z
    .registers 11
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 27
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "Android/data/com.sys.data"

    invoke-static {v8}, Lcom/bzbs/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .local v5, "root":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_1a
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "data1.sys"

    invoke-static {v7}, Lcom/bzbs/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v3, "gpxfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_179

    move-result v7

    if-ne v7, v6, :cond_175

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "blnchanged":Z
    :try_start_2d
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-direct {v2, p0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 36
    .local v2, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_3c
    :goto_3c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_16e

    .line 39
    if-eqz v4, :cond_3c

    .line 40
    const-string/jumbo v7, "rd"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 42
    const/4 v0, 0x1

    goto :goto_3c

    .line 44
    :cond_75
    const-string/jumbo v7, "ad"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ad"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 46
    const/4 v0, 0x1

    goto :goto_3c

    .line 48
    :cond_a6
    const-string/jumbo v7, "mf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 50
    const/4 v0, 0x1

    goto/16 :goto_3c

    .line 52
    :cond_d8
    const-string/jumbo v7, "dm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 54
    const/4 v0, 0x1

    goto/16 :goto_3c

    .line 56
    :cond_10a
    const-string/jumbo v7, "wa"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13c

    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wa"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->getWifiAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 58
    const/4 v0, 0x1

    goto/16 :goto_3c

    .line 60
    :cond_13c
    const-string/jumbo v7, "sn"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 62
    const/4 v0, 0x1

    goto/16 :goto_3c

    .line 70
    :cond_16e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_171} :catch_17b

    .line 75
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v4    # "line":Ljava/lang/String;
    :goto_171
    if-ne v0, v6, :cond_174

    .line 76
    const/4 v6, 0x0

    .line 85
    .end local v0    # "blnchanged":Z
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    :cond_174
    :goto_174
    return v6

    .line 79
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v5    # "root":Ljava/io/File;
    :cond_175
    :try_start_175
    invoke-static {p0}, Lcom/bzbs/util/DC;->SL(Landroid/content/Context;)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_178} :catch_179

    goto :goto_174

    .line 81
    .end local v3    # "gpxfile":Ljava/io/File;
    .end local v5    # "root":Ljava/io/File;
    :catch_179
    move-exception v7

    goto :goto_174

    .line 71
    .restart local v0    # "blnchanged":Z
    .restart local v3    # "gpxfile":Ljava/io/File;
    .restart local v5    # "root":Ljava/io/File;
    :catch_17b
    move-exception v7

    goto :goto_171
.end method

.method public static SL(Landroid/content/Context;)V
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 90
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "Android/data/com.sys.data"

    invoke-static {v6}, Lcom/bzbs/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_19

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_19
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "data1.sys"

    invoke-static {v5}, Lcom/bzbs/util/DC;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v1, "gpxfile":Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 97
    .local v4, "writer":Ljava/io/FileWriter;
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-direct {v0, p0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    const-string/jumbo v3, ""

    .line 99
    .local v3, "strdata":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "rd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ad"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "wa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->getWifiAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/DC;->parseUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v4, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 107
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_126} :catch_127

    .line 111
    .end local v0    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v1    # "gpxfile":Ljava/io/File;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "strdata":Ljava/lang/String;
    .end local v4    # "writer":Ljava/io/FileWriter;
    :goto_126
    return-void

    .line 108
    :catch_127
    move-exception v5

    goto :goto_126
.end method

.method private static byteToHex(B)Ljava/lang/String;
    .registers 3
    .param p0, "b"    # B

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    .line 129
    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v0, v2

    .line 130
    .local v0, "hi":B
    and-int/lit16 v2, p0, 0xff

    int-to-byte v1, v2

    .line 131
    .local v1, "lo":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/bzbs/util/DC;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/bzbs/util/DC;->byteToHex(B)Ljava/lang/String;

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
    .line 136
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 137
    .local v2, "utf8":[B
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_13

    .end local p0    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    move-object p0, v1

    .line 142
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "utf8":[B
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local p0    # "s":Ljava/lang/String;
    :goto_10
    return-object p0

    .line 139
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_11
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_10

    .line 141
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_13
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_10
.end method

.method public static parseUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p0, :cond_4

    .line 115
    const/4 v2, 0x0

    .line 121
    :cond_3
    return-object v2

    .line 116
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 117
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 118
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    .local v0, "c":C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/bzbs/util/DC;->charToHex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static showDialogMessage(Landroid/content/Context;)V
    .registers 10
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 147
    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_89

    .line 148
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v1, "dialogMessage":Landroid/app/Dialog;
    const v7, 0x7f04010b

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 152
    const v7, 0x7f1000b6

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 153
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v7, 0x7f100152

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 154
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f100262

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 155
    .local v3, "imgClose":Landroid/widget/ImageView;
    const v7, 0x7f100157

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 157
    .local v4, "tvClose":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 158
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 166
    const-string/jumbo v7, "Something went wrong!\nAnd we can not processing your request!"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v7, Lcom/bzbs/util/DC$1;

    invoke-direct {v7, v1}, Lcom/bzbs/util/DC$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 176
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 178
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 180
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogMessage":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgClose":Landroid/widget/ImageView;
    .end local v4    # "tvClose":Landroid/widget/TextView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    :cond_89
    return-void
.end method
