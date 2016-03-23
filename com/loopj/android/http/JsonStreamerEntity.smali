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
    .param p1, "progressHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .param p2, "useGZipCompression"    # Z
    .param p3, "elapsedField"    # Ljava/lang/String;

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
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 390
    return-void
.end method

.method static escape(Ljava/lang/String;)[B
    .registers 10
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x22

    .line 88
    if-nez p0, :cond_7

    .line 89
    sget-object v7, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    .line 143
    :goto_6
    return-object v7

    .line 93
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    const/4 v4, -0x1

    .line 99
    .local v4, "pos":I
    :goto_16
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_8f

    .line 100
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 101
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_9c

    .line 125
    const/16 v7, 0x1f

    if-le v0, v7, :cond_35

    const/16 v7, 0x7f

    if-lt v0, v7, :cond_2d

    const/16 v7, 0x9f

    if-le v0, v7, :cond_35

    :cond_2d
    const/16 v7, 0x2000

    if-lt v0, v7, :cond_8b

    const/16 v7, 0x20ff

    if-gt v0, v7, :cond_8b

    .line 126
    :cond_35
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "intString":Ljava/lang/String;
    const-string/jumbo v7, "\\u"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v1, v7, 0x4

    .line 129
    .local v1, "intLength":I
    const/4 v6, 0x0

    .local v6, "zero":I
    :goto_46
    if-ge v6, v1, :cond_81

    .line 130
    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 103
    .end local v1    # "intLength":I
    .end local v2    # "intString":Ljava/lang/String;
    .end local v6    # "zero":I
    :sswitch_50
    const-string/jumbo v7, "\\\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 106
    :sswitch_57
    const-string/jumbo v7, "\\\\"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 109
    :sswitch_5e
    const-string/jumbo v7, "\\b"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 112
    :sswitch_65
    const-string/jumbo v7, "\\f"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 115
    :sswitch_6c
    const-string/jumbo v7, "\\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 118
    :sswitch_73
    const-string/jumbo v7, "\\r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 121
    :sswitch_7a
    const-string/jumbo v7, "\\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 132
    .restart local v1    # "intLength":I
    .restart local v2    # "intString":Ljava/lang/String;
    .restart local v6    # "zero":I
    :cond_81
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 134
    .end local v1    # "intLength":I
    .end local v2    # "intString":Ljava/lang/String;
    .end local v6    # "zero":I
    :cond_8b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 141
    .end local v0    # "ch":C
    :cond_8f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto/16 :goto_6

    .line 101
    :sswitch_data_9c
    .sparse-switch
        0x8 -> :sswitch_5e
        0x9 -> :sswitch_7a
        0xa -> :sswitch_6c
        0xc -> :sswitch_65
        0xd -> :sswitch_73
        0x22 -> :sswitch_50
        0x5c -> :sswitch_57
    .end sparse-switch
.end method

.method private writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .registers 13
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "wrapper"    # Lcom/loopj/android/http/RequestParams$FileWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v5, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-wide/16 v2, 0x0

    .local v2, "bytesWritten":J
    iget-object v5, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 346
    .local v6, "totalSize":J
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 349
    .local v4, "in":Ljava/io/FileInputStream;
    new-instance v0, Lcom/loopj/android/http/Base64OutputStream;

    const/16 v5, 0x12

    invoke-direct {v0, p1, v5}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 353
    .local v0, "bos":Lcom/loopj/android/http/Base64OutputStream;
    :goto_21
    iget-object v5, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_38

    .line 354
    iget-object v5, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v1}, Lcom/loopj/android/http/Base64OutputStream;->write([BII)V

    .line 355
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 356
    iget-object v5, p0, Lcom/loopj/android/http/JsonStreamerEntity;->progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v5, v2, v3, v6, v7}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendProgressMessage(JJ)V

    goto :goto_21

    .line 360
    :cond_38
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/loopj/android/http/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    .line 366
    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 367
    return-void
.end method

.method private writeToFromStream(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$StreamWrapper;)V
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "entry"    # Lcom/loopj/android/http/RequestParams$StreamWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v2, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/loopj/android/http/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/loopj/android/http/Base64OutputStream;

    const/16 v2, 0x12

    invoke-direct {v0, p1, v2}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 319
    .local v0, "bos":Lcom/loopj/android/http/Base64OutputStream;
    :goto_e
    iget-object v2, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
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
    iget-boolean v2, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    if-eqz v2, :cond_2f

    .line 332
    iget-object v2, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 334
    :cond_2f
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public consumeContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 188
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

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
    .registers 20
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    if-nez p1, :cond_b

    .line 198
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "Output stream cannot be null."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 202
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 206
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    if-eqz v13, :cond_6d

    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    const/16 v13, 0x1000

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v13}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 211
    .local v9, "os":Ljava/io/OutputStream;
    :goto_1e
    const/16 v13, 0x7b

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 216
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    .line 217
    .local v7, "keysCount":I
    if-lez v7, :cond_1f7

    .line 218
    const/4 v8, 0x0

    .line 222
    .local v8, "keysProcessed":I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_36
    :goto_36
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_194

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 224
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 228
    :try_start_44
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 231
    .local v12, "value":Ljava/lang/Object;
    invoke-static {v5}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    .line 232
    const/16 v13, 0x3a

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write(I)V

    .line 235
    if-nez v12, :cond_70

    .line 236
    sget-object v13, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_8c

    .line 277
    .end local v12    # "value":Ljava/lang/Object;
    :goto_5f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    if-nez v13, :cond_67

    if-ge v8, v7, :cond_36

    .line 278
    :cond_67
    const/16 v13, 0x2c

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write(I)V

    goto :goto_36

    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "keysCount":I
    .end local v8    # "keysProcessed":I
    .end local v9    # "os":Ljava/io/OutputStream;
    :cond_6d
    move-object/from16 v9, p1

    .line 206
    goto :goto_1e

    .line 239
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "keysCount":I
    .restart local v8    # "keysProcessed":I
    .restart local v9    # "os":Ljava/io/OutputStream;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_70
    :try_start_70
    instance-of v4, v12, Lcom/loopj/android/http/RequestParams$FileWrapper;

    .line 242
    .local v4, "isFileWrapper":Z
    if-nez v4, :cond_78

    instance-of v13, v12, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    if-eqz v13, :cond_a3

    .line 244
    :cond_78
    const/16 v13, 0x7b

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write(I)V

    .line 247
    if-eqz v4, :cond_9b

    .line 248
    check-cast v12, Lcom/loopj/android/http/RequestParams$FileWrapper;

    .end local v12    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/loopj/android/http/JsonStreamerEntity;->writeToFromFile(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$FileWrapper;)V

    .line 254
    :goto_86
    const/16 v13, 0x7d

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write(I)V
    :try_end_8b
    .catchall {:try_start_70 .. :try_end_8b} :catchall_8c

    goto :goto_5f

    .line 277
    .end local v4    # "isFileWrapper":Z
    :catchall_8c
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    if-nez v14, :cond_95

    if-ge v8, v7, :cond_9a

    .line 278
    :cond_95
    const/16 v14, 0x2c

    invoke-virtual {v9, v14}, Ljava/io/OutputStream;->write(I)V

    :cond_9a
    throw v13

    .line 250
    .restart local v4    # "isFileWrapper":Z
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_9b
    :try_start_9b
    check-cast v12, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    .end local v12    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/loopj/android/http/JsonStreamerEntity;->writeToFromStream(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$StreamWrapper;)V

    goto :goto_86

    .line 255
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_a3
    instance-of v13, v12, Lcom/loopj/android/http/JsonValueInterface;

    if-eqz v13, :cond_b1

    .line 256
    check-cast v12, Lcom/loopj/android/http/JsonValueInterface;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-interface {v12}, Lcom/loopj/android/http/JsonValueInterface;->getEscapedJsonValue()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5f

    .line 257
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_b1
    instance-of v13, v12, Lorg/json/JSONObject;

    if-eqz v13, :cond_c1

    .line 258
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5f

    .line 259
    :cond_c1
    instance-of v13, v12, Lorg/json/JSONArray;

    if-eqz v13, :cond_d1

    .line 260
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5f

    .line 261
    :cond_d1
    instance-of v13, v12, Ljava/lang/Boolean;

    if-eqz v13, :cond_e7

    .line 262
    check-cast v12, Ljava/lang/Boolean;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_e4

    sget-object v13, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_TRUE:[B

    :goto_df
    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5f

    :cond_e4
    sget-object v13, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_FALSE:[B

    goto :goto_df

    .line 263
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_e7
    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_110

    .line 264
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v12, Ljava/lang/Number;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5f

    .line 265
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_110
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_139

    .line 266
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v12, Ljava/lang/Number;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5f

    .line 267
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_139
    instance-of v13, v12, Ljava/lang/Float;

    if-eqz v13, :cond_160

    .line 268
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v12, Ljava/lang/Number;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5f

    .line 269
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_160
    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_187

    .line 270
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v12, Ljava/lang/Number;

    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5f

    .line 272
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_187
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V
    :try_end_192
    .catchall {:try_start_9b .. :try_end_192} :catchall_8c

    goto/16 :goto_5f

    .line 284
    .end local v4    # "isFileWrapper":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v2, v14, v10

    .line 289
    .local v2, "elapsedTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    if-eqz v13, :cond_1c7

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    .line 291
    const/16 v13, 0x3a

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write(I)V

    .line 292
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    .line 295
    :cond_1c7
    sget-object v13, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v14, "JsonStreamerEntity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Uploaded JSON in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v2, v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " seconds"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/loopj/android/http/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .end local v2    # "elapsedTime":J
    .end local v8    # "keysProcessed":I
    :cond_1f7
    const/16 v13, 0x7d

    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write(I)V

    .line 302
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 303
    invoke-static {v9}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 304
    return-void
.end method