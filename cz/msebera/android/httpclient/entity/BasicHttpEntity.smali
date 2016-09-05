.class public Lcz/msebera/android/httpclient/entity/BasicHttpEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "BasicHttpEntity.java"


# instance fields
.field private d:Ljava/io/InputStream;

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->e:J

    .line 58
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4

    .prologue
    .line 94
    iput-wide p1, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->e:J

    .line 95
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->d:Ljava/io/InputStream;

    .line 105
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Content has not been provided"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->d:Ljava/io/InputStream;

    return-object v0

    .line 74
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->e:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 108
    const-string/jumbo v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 112
    const/16 v0, 0x1000

    :try_start_c
    new-array v0, v0, [B

    .line 113
    :goto_e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 114
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    goto :goto_e

    .line 117
    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 119
    return-void
.end method
