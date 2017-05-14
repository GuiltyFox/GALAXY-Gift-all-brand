.class public Lcz/msebera/android/httpclient/conn/BasicManagedEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "BasicManagedEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

.field protected final b:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V
    .registers 5

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 75
    const-string/jumbo v0, "Connection"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 77
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->b:Z

    .line 78
    return-void
.end method

.method private d()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-nez v0, :cond_5

    .line 106
    :goto_4
    return-void

    .line 96
    :cond_5
    :try_start_5
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->b:Z

    if-eqz v0, :cond_17

    .line 98
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->a(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 99
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->i()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1d

    .line 104
    :goto_13
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->c()V

    goto :goto_4

    .line 101
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->j()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_13

    .line 104
    :catchall_1d
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->c()V

    throw v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Z
    .registers 3

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_10

    .line 141
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->b:Z

    if-eqz v0, :cond_15

    .line 144
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 145
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->i()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1b

    .line 151
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->c()V

    .line 153
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->j()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_10

    .line 151
    :catchall_1b
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->c()V

    throw v0
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_c

    .line 131
    :try_start_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->b()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    .line 133
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 136
    :cond_c
    return-void

    .line 133
    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    throw v0
.end method

.method public b(Ljava/io/InputStream;)Z
    .registers 4

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_16

    .line 159
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->b:Z

    if-eqz v0, :cond_24

    .line 160
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->c()Z
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_1f

    move-result v1

    .line 164
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->i()V
    :try_end_16
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_16} :catch_1b
    .catchall {:try_start_e .. :try_end_16} :catchall_1f

    .line 176
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->c()V

    .line 178
    const/4 v0, 0x0

    return v0

    .line 166
    :catch_1b
    move-exception v0

    .line 167
    if-eqz v1, :cond_16

    .line 168
    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 176
    :catchall_1f
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->c()V

    throw v0

    .line 172
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->j()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_1f

    goto :goto_16
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_c

    .line 201
    :try_start_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->h_()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    .line 203
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 206
    :cond_c
    return-void

    .line 203
    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    throw v0
.end method

.method public c(Ljava/io/InputStream;)Z
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->a:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->b()V

    .line 185
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public consumeContent()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->d()V

    .line 115
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public h_()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->d()V

    .line 125
    return-void
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 120
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->d()V

    .line 121
    return-void
.end method
