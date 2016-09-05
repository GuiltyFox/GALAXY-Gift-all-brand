.class public Lcom/loopj/android/http/JsonStreamerEntity;
.super Ljava/lang/Object;
.source "JsonStreamerEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

.field private static final HEADER_GZIP_ENCODING:Lcz/msebera/android/httpclient/Header;

.field private static final HEADER_JSON_CONTENT:Lcz/msebera/android/httpclient/Header;

.field private static final JSON_FALSE:[B

.field private static final JSON_NULL:[B

.field private static final JSON_TRUE:[B

.field private static final LOG_TAG:Ljava/lang/String; = "JsonStreamerEntity"

.field private static final STREAM_CONTENTS:[B

.field private static final STREAM_NAME:[B

.field private static final STREAM_TYPE:[B


# instance fields
.field private final buffer:[B

.field private final contentEncoding:Lcz/msebera/android/httpclient/Header;

.field private final elapsedField:[B

.field private final jsonParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    .line 50
    const-string/jumbo v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_TRUE:[B

    .line 51
    const-string/jumbo v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_FALSE:[B

    .line 52
    const-string/jumbo v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 53
    const-string/jumbo v0, "name"

    invoke-static {v0}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_NAME:[B

    .line 54
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_TYPE:[B

    .line 55
    const-string/jumbo v0, "contents"

    invoke-static {v0}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/json"

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lcz/msebera/android/httpclient/Header;

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lcz/msebera/android/httpclient/Header;

    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/ResponseHandlerInterface;ZLjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    .line 77
    iput-object p1, p0, Lcom/loopj/android/http/JsonStreamerEntity;->progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    .line 78
    if-eqz p2, :cond_22

    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lcz/msebera/android/httpclient/Header;

    :goto_17
    iput-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    .line 79
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 81
    :goto_1f
    iput-object v1, p0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    .line 82
    return-void

    :cond_22
    move-object v0, v1

    .line 78
    goto :goto_17

    .line 81
    :cond_24
    invoke-static {p3}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1f
.end method

.method private endMetaData(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 389
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 390
    return-void
.end method

.method static escape(Ljava/lang/String;)[B
    .registers 9

    .prologue
    const/16 v7, 0x22

    .line 88
    if-nez p0, :cond_7

    .line 89
    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 143
    :goto_6
    return-object v0

    .line 93
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, -0x1

    .line 99
    :goto_16
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v3, :cond_90

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 101
    sparse-switch v0, :sswitch_data_9e

    .line 125
    const/16 v4, 0x1f

    if-le v0, v4, :cond_35

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_2d

    const/16 v4, 0x9f

    if-le v0, v4, :cond_35

    :cond_2d
    const/16 v4, 0x2000

    if-lt v0, v4, :cond_8c

    const/16 v4, 0x20ff

    if-gt v0, v4, :cond_8c

    .line 126
    :cond_35
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    const-string/jumbo v0, "\\u"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v5, v0, 0x4

    .line 129
    const/4 v0, 0x0

    :goto_46
    if-ge v0, v5, :cond_82

    .line 130
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 103
    :sswitch_50
    const-string/jumbo v0, "\\\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_56
    move v0, v1

    .line 138
    goto :goto_16

    .line 106
    :sswitch_58
    const-string/jumbo v0, "\\\\"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 109
    :sswitch_5f
    const-string/jumbo v0, "\\b"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 112
    :sswitch_66
    const-string/jumbo v0, "\\f"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 115
    :sswitch_6d
    const-string/jumbo v0, "\\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 118
    :sswitch_74
    const-string/jumbo v0, "\\r"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 121
    :sswitch_7b
    const-string/jumbo v0, "\\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 132
    :cond_82
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 134
    :cond_8c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 141
    :cond_90
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_6

    .line 101
    nop

    :sswitch_data_9e
    .sparse-switch
        0x8 -> :sswitch_5f
        0x9 -> :sswitch_7b
        0xa -> :sswitch_6d
        0xc -> :sswitch_66
        0xd -> :sswitch_74
        0x22 -> :sswitch_50
        0x5c -> :sswitch_58
    .end sparse-switch
.end method

.method private writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/16 v2, 0x2c

    const/16 v1, 0x3a

    .line 371
    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_NAME:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 372
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 373
    invoke-static {p2}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 374
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 377
    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_TYPE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 378
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 379
    invoke-static {p3}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 380
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 383
    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 384
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 385
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 386
    return-void
.end method

.method private writeToFromFile(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$FileWrapper;)V
    .registers 12

    .prologue
    .line 340
    iget-object v0, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/loopj/android/http/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-wide/16 v0, 0x0

    iget-object v2, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 346
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 349
    new-instance v5, Lcom/loopj/android/http/Base64OutputStream;

    const/16 v6, 0x12

    invoke-direct {v5, p1, v6}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 353
    :goto_21
    iget-object v6, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_38

    .line 354
    iget-object v7, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6}, Lcom/loopj/android/http/Base64OutputStream;->write([BII)V

    .line 355
    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 356
    iget-object v6, p0, Lcom/loopj/android/http/JsonStreamerEntity;->progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v6, v0, v1, v2, v3}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendProgressMessage(JJ)V

    goto :goto_21

    .line 360
    :cond_38
    invoke-static {v5}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/loopj/android/http/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 366
    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 367
    return-void
.end method

.method private writeToFromStream(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$StreamWrapper;)V
    .registers 7

    .prologue
    .line 310
    iget-object v0, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/loopj/android/http/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/loopj/android/http/Base64OutputStream;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 319
    :goto_e
    iget-object v1, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 320
    iget-object v2, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/loopj/android/http/Base64OutputStream;->write([BII)V

    goto :goto_e

    .line 324
    :cond_20
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/loopj/android/http/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 330
    iget-boolean v0, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    if-eqz v0, :cond_2f

    .line 332
    iget-object v0, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 334
    :cond_2f
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public consumeContent()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 192
    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 173
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 183
    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 17

    .prologue
    const/16 v14, 0x7d

    const/16 v4, 0x7b

    const/16 v13, 0x3a

    const/16 v12, 0x2c

    .line 197
    if-nez p1, :cond_13

    .line 198
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Output stream cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 206
    iget-object v2, p0, Lcom/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    if-eqz v2, :cond_26

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    const/16 v3, 0x1000

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 p1, v2

    .line 211
    :cond_26
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 214
    iget-object v2, p0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 216
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    .line 217
    if-lez v5, :cond_20a

    .line 218
    const/4 v2, 0x0

    .line 222
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    :goto_3d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ad

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    add-int/lit8 v4, v3, 0x1

    .line 228
    :try_start_4b
    iget-object v3, p0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    invoke-static {v2}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 232
    const/16 v2, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 235
    if-nez v3, :cond_77

    .line 236
    sget-object v2, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_6a
    .catchall {:try_start_4b .. :try_end_6a} :catchall_99

    .line 277
    :goto_6a
    iget-object v2, p0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    if-nez v2, :cond_70

    if-ge v4, v5, :cond_75

    .line 278
    :cond_70
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    :cond_75
    move v3, v4

    .line 281
    goto :goto_3d

    .line 239
    :cond_77
    :try_start_77
    instance-of v2, v3, Lcom/loopj/android/http/RequestParams$FileWrapper;

    .line 242
    if-nez v2, :cond_7f

    instance-of v9, v3, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    if-eqz v9, :cond_ae

    .line 244
    :cond_7f
    const/16 v9, 0x7b

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write(I)V

    .line 247
    if-eqz v2, :cond_a6

    .line 248
    move-object v0, v3

    check-cast v0, Lcom/loopj/android/http/RequestParams$FileWrapper;

    move-object v2, v0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/loopj/android/http/JsonStreamerEntity;->writeToFromFile(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$FileWrapper;)V

    .line 254
    :goto_91
    const/16 v2, 0x7d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V
    :try_end_98
    .catchall {:try_start_77 .. :try_end_98} :catchall_99

    goto :goto_6a

    .line 277
    :catchall_99
    move-exception v2

    iget-object v3, p0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    if-nez v3, :cond_a0

    if-ge v4, v5, :cond_a5

    .line 278
    :cond_a0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    :cond_a5
    throw v2

    .line 250
    :cond_a6
    :try_start_a6
    check-cast v3, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/loopj/android/http/JsonStreamerEntity;->writeToFromStream(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$StreamWrapper;)V

    goto :goto_91

    .line 255
    :cond_ae
    instance-of v2, v3, Lcom/loopj/android/http/JsonValueInterface;

    if-eqz v2, :cond_be

    .line 256
    check-cast v3, Lcom/loopj/android/http/JsonValueInterface;

    invoke-interface {v3}, Lcom/loopj/android/http/JsonValueInterface;->getEscapedJsonValue()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6a

    .line 257
    :cond_be
    instance-of v2, v3, Lorg/json/JSONObject;

    if-eqz v2, :cond_d0

    .line 258
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6a

    .line 259
    :cond_d0
    instance-of v2, v3, Lorg/json/JSONArray;

    if-eqz v2, :cond_e2

    .line 260
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6a

    .line 261
    :cond_e2
    instance-of v2, v3, Ljava/lang/Boolean;

    if-eqz v2, :cond_fa

    .line 262
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f7

    sget-object v2, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_TRUE:[B

    :goto_f0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_6a

    :cond_f7
    sget-object v2, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_FALSE:[B

    goto :goto_f0

    .line 263
    :cond_fa
    instance-of v2, v3, Ljava/lang/Long;

    if-eqz v2, :cond_123

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_6a

    .line 265
    :cond_123
    instance-of v2, v3, Ljava/lang/Double;

    if-eqz v2, :cond_14c

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_6a

    .line 267
    :cond_14c
    instance-of v2, v3, Ljava/lang/Float;

    if-eqz v2, :cond_175

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_6a

    .line 269
    :cond_175
    instance-of v2, v3, Ljava/lang/Integer;

    if-eqz v2, :cond_19e

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_6a

    .line 272
    :cond_19e
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1ab
    .catchall {:try_start_a6 .. :try_end_1ab} :catchall_99

    goto/16 :goto_6a

    .line 284
    :cond_1ad
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    .line 289
    iget-object v4, p0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    if-eqz v4, :cond_1df

    .line 290
    iget-object v4, p0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 291
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write(I)V

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 295
    :cond_1df
    sget-object v4, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v5, "JsonStreamerEntity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Uploaded JSON in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/loopj/android/http/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_20a
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write(I)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 303
    invoke-static/range {p1 .. p1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 304
    return-void
.end method
