.class public final Lcom/google/zxing/client/android/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/HttpHelper$ContentType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$client$android$HttpHelper$ContentType:[I

.field private static final REDIRECTOR_DOMAINS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$client$android$HttpHelper$ContentType()[I
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lcom/google/zxing/client/android/HttpHelper;->$SWITCH_TABLE$com$google$zxing$client$android$HttpHelper$ContentType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->values()[Lcom/google/zxing/client/android/HttpHelper$ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/google/zxing/client/android/HttpHelper$ContentType;->HTML:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/google/zxing/client/android/HttpHelper$ContentType;->JSON:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/google/zxing/client/android/HttpHelper$ContentType;->TEXT:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/google/zxing/client/android/HttpHelper$ContentType;->XML:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/google/zxing/client/android/HttpHelper;->$SWITCH_TABLE$com$google$zxing$client$android$HttpHelper$ContentType:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 39
    const-class v0, Lcom/google/zxing/client/android/HttpHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 42
    const-string v3, "amzn.to"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "bit.ly"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bitly.com"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "fb.me"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "goo.gl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "is.gd"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "j.mp"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "lnkd.in"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ow.ly"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 43
    const-string v3, "R.BEETAGG.COM"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "r.beetagg.com"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SCN.BY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "su.pr"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "t.co"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "tinyurl.com"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "tr.im"

    aput-object v3, v1, v2

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/zxing/client/android/HttpHelper;->REDIRECTOR_DOMAINS:Ljava/util/Collection;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static consume(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "connection"    # Ljava/net/URLConnection;
    .param p1, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0}, Lcom/google/zxing/client/android/HttpHelper;->getEncoding(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "encoding":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v5, "out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 143
    .local v3, "in":Ljava/io/Reader;
    :try_start_a
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_3e

    .line 144
    .end local v3    # "in":Ljava/io/Reader;
    .local v4, "in":Ljava/io/Reader;
    const/16 v6, 0x400

    :try_start_15
    new-array v0, v6, [C

    .line 146
    .local v0, "buffer":[C
    :goto_17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v6, p1, :cond_23

    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_2e

    move-result v1

    .local v1, "charsRead":I
    if-gtz v1, :cond_29

    .line 150
    .end local v1    # "charsRead":I
    :cond_23
    if-eqz v4, :cond_28

    .line 152
    :try_start_25
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_28} :catch_3c

    .line 160
    :cond_28
    :goto_28
    return-object v5

    .line 147
    .restart local v1    # "charsRead":I
    :cond_29
    const/4 v6, 0x0

    :try_start_2a
    invoke-virtual {v5, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_17

    .line 149
    .end local v0    # "buffer":[C
    .end local v1    # "charsRead":I
    :catchall_2e
    move-exception v6

    move-object v3, v4

    .line 150
    .end local v4    # "in":Ljava/io/Reader;
    .restart local v3    # "in":Ljava/io/Reader;
    :goto_30
    if-eqz v3, :cond_35

    .line 152
    :try_start_32
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_35} :catch_38

    .line 159
    :cond_35
    :goto_35
    throw v6

    .line 153
    :catch_36
    move-exception v7

    goto :goto_35

    .line 155
    :catch_38
    move-exception v7

    goto :goto_35

    .line 153
    .end local v3    # "in":Ljava/io/Reader;
    .restart local v0    # "buffer":[C
    .restart local v4    # "in":Ljava/io/Reader;
    :catch_3a
    move-exception v6

    goto :goto_28

    .line 155
    :catch_3c
    move-exception v6

    goto :goto_28

    .line 149
    .end local v0    # "buffer":[C
    .end local v4    # "in":Ljava/io/Reader;
    .restart local v3    # "in":Ljava/io/Reader;
    :catchall_3e
    move-exception v6

    goto :goto_30
.end method

.method public static downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/google/zxing/client/android/HttpHelper$ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;I)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/google/zxing/client/android/HttpHelper$ContentType;
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/google/zxing/client/android/HttpHelper;->$SWITCH_TABLE$com$google$zxing$client$android$HttpHelper$ContentType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 90
    const-string v0, "text/*,*/*"

    .line 92
    .local v0, "contentTypes":Ljava/lang/String;
    :goto_f
    invoke-static {p0, v0, p2}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0    # "contentTypes":Ljava/lang/String;
    :pswitch_14
    const-string v0, "application/xhtml+xml,text/html,text/*,*/*"

    .line 81
    .restart local v0    # "contentTypes":Ljava/lang/String;
    goto :goto_f

    .line 83
    .end local v0    # "contentTypes":Ljava/lang/String;
    :pswitch_17
    const-string v0, "application/json,text/*,*/*"

    .line 84
    .restart local v0    # "contentTypes":Ljava/lang/String;
    goto :goto_f

    .line 86
    .end local v0    # "contentTypes":Ljava/lang/String;
    :pswitch_1a
    const-string v0, "application/xml,text/*,*/*"

    .line 87
    .restart local v0    # "contentTypes":Ljava/lang/String;
    goto :goto_f

    .line 78
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private static downloadViaHttp(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "contentTypes"    # Ljava/lang/String;
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "redirects":I
    :goto_1
    const/4 v5, 0x5

    if-lt v2, v5, :cond_c

    .line 124
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Too many redirects"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_c
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, "url":Ljava/net/URL;
    invoke-static {v4}, Lcom/google/zxing/client/android/HttpHelper;->safelyOpenConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 100
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 101
    const-string v5, "Accept"

    invoke-virtual {v0, v5, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "Accept-Charset"

    const-string v6, "utf-8,*"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v5, "User-Agent"

    const-string v6, "ZXing (Android)"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :try_start_2c
    invoke-static {p0, v0}, Lcom/google/zxing/client/android/HttpHelper;->safelyConnect(Ljava/lang/String;Ljava/net/HttpURLConnection;)I

    move-result v3

    .line 106
    .local v3, "responseCode":I
    sparse-switch v3, :sswitch_data_6c

    .line 118
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad HTTP response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_48

    .line 120
    .end local v3    # "responseCode":I
    :catchall_48
    move-exception v5

    .line 121
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    throw v5

    .line 108
    .restart local v3    # "responseCode":I
    :sswitch_4d
    :try_start_4d
    invoke-static {v0, p2}, Lcom/google/zxing/client/android/HttpHelper;->consume(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_48

    move-result-object v5

    .line 121
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    return-object v5

    .line 110
    :sswitch_55
    :try_start_55
    const-string v5, "Location"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_48

    move-result-object v1

    .line 111
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_64

    .line 112
    move-object p0, v1

    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 121
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 116
    :cond_64
    :try_start_64
    new-instance v5, Ljava/io/IOException;

    const-string v6, "No Location"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_48

    .line 106
    :sswitch_data_6c
    .sparse-switch
        0xc8 -> :sswitch_4d
        0x12e -> :sswitch_55
    .end sparse-switch
.end method

.method private static getEncoding(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 4
    .param p0, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 128
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "contentTypeHeader":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 130
    const-string v2, "charset="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "charsetStart":I
    if-ltz v0, :cond_1c

    .line 132
    const-string v2, "charset="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .end local v0    # "charsetStart":I
    :goto_1b
    return-object v2

    :cond_1c
    const-string v2, "UTF-8"

    goto :goto_1b
.end method

.method private static safelyConnect(Ljava/lang/String;Ljava/net/HttpURLConnection;)I
    .registers 9
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_46
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_65

    .line 232
    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6} :catch_84
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_a3

    move-result v4

    return v4

    .line 214
    :catch_8
    move-exception v2

    .line 216
    .local v2, "npe":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad URI? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_27
    move-exception v0

    .line 220
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad URI? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_46
    move-exception v3

    .line 224
    .local v3, "se":Ljava/lang/SecurityException;
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Restricted URI? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 226
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catch_65
    move-exception v1

    .line 228
    .local v1, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad URI? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 233
    .end local v1    # "ioobe":Ljava/lang/IndexOutOfBoundsException;
    :catch_84
    move-exception v2

    .line 235
    .restart local v2    # "npe":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad URI? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 237
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_a3
    move-exception v0

    .line 239
    .restart local v0    # "iae":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad server status? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static safelyOpenConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 6
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_e

    move-result-object v0

    .line 205
    .local v0, "conn":Ljava/net/URLConnection;
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_2d

    .line 206
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 200
    .end local v0    # "conn":Ljava/net/URLConnection;
    :catch_e
    move-exception v1

    .line 202
    .local v1, "npe":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad URI? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    .restart local v0    # "conn":Ljava/net/URLConnection;
    :cond_2d
    check-cast v0, Ljava/net/HttpURLConnection;

    .end local v0    # "conn":Ljava/net/URLConnection;
    return-object v0
.end method

.method public static unredirect(Ljava/net/URI;)Ljava/net/URI;
    .registers 8
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 164
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper;->REDIRECTOR_DOMAINS:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 190
    .end local p0    # "uri":Ljava/net/URI;
    :goto_d
    return-object p0

    .line 167
    .restart local p0    # "uri":Ljava/net/URI;
    :cond_e
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    .line 168
    .local v3, "url":Ljava/net/URL;
    invoke-static {v3}, Lcom/google/zxing/client/android/HttpHelper;->safelyOpenConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 169
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 170
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 171
    const-string v4, "HEAD"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 172
    const-string v4, "User-Agent"

    const-string v5, "ZXing (Android)"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :try_start_28
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/zxing/client/android/HttpHelper;->safelyConnect(Ljava/lang/String;Ljava/net/HttpURLConnection;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_49

    move-result v2

    .line 175
    .local v2, "responseCode":I
    packed-switch v2, :pswitch_data_50

    .line 192
    :cond_33
    :goto_33
    :pswitch_33
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_d

    .line 181
    :pswitch_37
    :try_start_37
    const-string v4, "Location"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_49

    move-result-object v1

    .line 182
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 184
    :try_start_3f
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/net/URISyntaxException; {:try_start_3f .. :try_end_44} :catch_4e
    .catchall {:try_start_3f .. :try_end_44} :catchall_49

    .line 192
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p0, v4

    .line 184
    goto :goto_d

    .line 191
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "responseCode":I
    :catchall_49
    move-exception v4

    .line 192
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    throw v4

    .line 185
    .restart local v1    # "location":Ljava/lang/String;
    .restart local v2    # "responseCode":I
    :catch_4e
    move-exception v4

    goto :goto_33

    .line 175
    :pswitch_data_50
    .packed-switch 0x12c
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_37
    .end packed-switch
.end method
