.class public Lcz/msebera/android/httpclient/entity/StringEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "StringEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V
    .registers 5

    .prologue
    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 67
    const-string/jumbo v0, "Source string"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 69
    :goto_f
    if-nez v0, :cond_13

    .line 70
    sget-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->a:Ljava/nio/charset/Charset;

    .line 73
    :cond_13
    :try_start_13
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->d:[B
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1d} :catch_29

    .line 78
    if-eqz p2, :cond_26

    .line 79
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/StringEntity;->a(Ljava/lang/String;)V

    .line 81
    :cond_26
    return-void

    .line 68
    :cond_27
    const/4 v0, 0x0

    goto :goto_f

    .line 74
    :catch_29
    move-exception v1

    .line 76
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 165
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->d:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->d:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 169
    const-string/jumbo v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 171
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 172
    return-void
.end method
