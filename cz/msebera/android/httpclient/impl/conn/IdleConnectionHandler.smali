.class public Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final connectionToTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/HttpConnection;",
            "Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;",
            ">;"
        }
    .end annotation
.end field

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    .line 63
    return-void
.end method


# virtual methods
.method public add(Lcz/msebera/android/httpclient/HttpConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p1, "connection"    # Lcz/msebera/android/httpclient/HttpConnection;
    .param p2, "validDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 77
    .local v2, "timeAdded":J
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding connection at: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 81
    :cond_25
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public closeExpiredConnections()V
    .registers 13

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 143
    .local v4, "now":J
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 144
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Checking for expired connections, now: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 147
    :cond_25
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2f
    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcz/msebera/android/httpclient/HttpConnection;Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpConnection;

    .line 149
    .local v0, "conn":Lcz/msebera/android/httpclient/HttpConnection;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;

    .line 150
    .local v3, "times":Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;
    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-gtz v7, :cond_2f

    .line 151
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 152
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Closing connection, expired @: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 155
    :cond_74
    :try_start_74
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_2f

    .line 156
    :catch_78
    move-exception v2

    .line 157
    .local v2, "ex":Ljava/io/IOException;
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v8, "I/O error closing connection"

    invoke-virtual {v7, v8, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 161
    .end local v0    # "conn":Lcz/msebera/android/httpclient/HttpConnection;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcz/msebera/android/httpclient/HttpConnection;Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;>;"
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "times":Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;
    :cond_82
    return-void
.end method

.method public closeIdleConnections(J)V
    .registers 16
    .param p1, "idleTime"    # J

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, p1

    .line 119
    .local v6, "idleTimeout":J
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 120
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Checking for connections, idle timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 123
    :cond_27
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_31
    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_80

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcz/msebera/android/httpclient/HttpConnection;Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpConnection;

    .line 125
    .local v0, "conn":Lcz/msebera/android/httpclient/HttpConnection;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;

    .line 126
    .local v5, "times":Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;
    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;->access$100(Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v2

    .line 127
    .local v2, "connectionTime":J
    cmp-long v9, v2, v6

    if-gtz v9, :cond_31

    .line 128
    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_72

    .line 129
    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Closing idle connection, connection time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 132
    :cond_72
    :try_start_72
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_31

    .line 133
    :catch_76
    move-exception v4

    .line 134
    .local v4, "ex":Ljava/io/IOException;
    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v10, "I/O error closing connection"

    invoke-virtual {v9, v10, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 138
    .end local v0    # "conn":Lcz/msebera/android/httpclient/HttpConnection;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcz/msebera/android/httpclient/HttpConnection;Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;>;"
    .end local v2    # "connectionTime":J
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "times":Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;
    :cond_80
    return-void
.end method

.method public remove(Lcz/msebera/android/httpclient/HttpConnection;)Z
    .registers 8
    .param p1, "connection"    # Lcz/msebera/android/httpclient/HttpConnection;

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;

    .line 94
    .local v0, "times":Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;
    if-nez v0, :cond_14

    .line 95
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v3, "Removing a connection that never existed!"

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    .line 98
    :cond_13
    :goto_13
    return v1

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    const/4 v1, 0x0

    goto :goto_13
.end method

.method public removeAll()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    return-void
.end method
