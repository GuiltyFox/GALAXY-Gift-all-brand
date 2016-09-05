.class public Lcz/msebera/android/httpclient/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;


# instance fields
.field protected a:Ljava/io/InputStream;

.field private b:Z

.field private final c:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V
    .registers 4

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 84
    const-string/jumbo v0, "Wrapped stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->b:Z

    .line 87
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    .line 88
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1d

    if-gez p1, :cond_1d

    .line 197
    const/4 v0, 0x1

    .line 198
    :try_start_8
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v1, :cond_14

    .line 199
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->a(Ljava/io/InputStream;)Z

    move-result v0

    .line 201
    :cond_14
    if-eqz v0, :cond_1b

    .line 202
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1e

    .line 205
    :cond_1b
    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    .line 208
    :cond_1d
    return-void

    .line 205
    :catchall_1e
    move-exception v0

    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    throw v0
.end method

.method public available()I
    .registers 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 159
    :try_start_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v0

    .line 167
    :cond_d
    return v0

    .line 161
    :catch_e
    move-exception v0

    .line 162
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->e()V

    .line 163
    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->b:Z

    .line 285
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->e()V

    .line 286
    return-void
.end method

.method protected c()Z
    .registers 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->b:Z

    if-eqz v0, :cond_d

    .line 109
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public close()V
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->b:Z

    .line 174
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->d()V

    .line 175
    return-void
.end method

.method protected d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    .line 225
    const/4 v0, 0x1

    .line 226
    :try_start_6
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v1, :cond_12

    .line 227
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->b(Ljava/io/InputStream;)Z

    move-result v0

    .line 229
    :cond_12
    if-eqz v0, :cond_19

    .line 230
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1c

    .line 233
    :cond_19
    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    .line 236
    :cond_1b
    return-void

    .line 233
    :catchall_1c
    move-exception v0

    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    throw v0
.end method

.method public d_()V
    .registers 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->close()V

    .line 273
    return-void
.end method

.method protected e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    .line 255
    const/4 v0, 0x1

    .line 256
    :try_start_6
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v1, :cond_12

    .line 257
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->c(Ljava/io/InputStream;)Z

    move-result v0

    .line 259
    :cond_12
    if-eqz v0, :cond_19

    .line 260
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1c

    .line 263
    :cond_19
    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    .line 266
    :cond_1b
    return-void

    .line 263
    :catchall_1c
    move-exception v0

    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    throw v0
.end method

.method public read()I
    .registers 3

    .prologue
    .line 116
    const/4 v0, -0x1

    .line 118
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 120
    :try_start_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11

    .line 128
    :cond_10
    return v0

    .line 122
    :catch_11
    move-exception v0

    .line 123
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->e()V

    .line 124
    throw v0
.end method

.method public read([B)I
    .registers 4

    .prologue
    .line 150
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6

    .prologue
    .line 133
    const/4 v0, -0x1

    .line 135
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 137
    :try_start_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 138
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->a(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11

    .line 145
    :cond_10
    return v0

    .line 139
    :catch_11
    move-exception v0

    .line 140
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->e()V

    .line 141
    throw v0
.end method
