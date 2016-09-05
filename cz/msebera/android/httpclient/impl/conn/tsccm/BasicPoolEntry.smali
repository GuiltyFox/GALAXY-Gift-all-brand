.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
.super Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
.source "BasicPoolEntry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final f:J

.field private g:J

.field private final h:J

.field private i:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V
    .registers 11

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 88
    const-string/jumbo v0, "HTTP route"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->f:J

    .line 90
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_23

    .line 91
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->f:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->h:J

    .line 95
    :goto_1e
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->h:J

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->i:J

    .line 96
    return-void

    .line 93
    :cond_23
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->h:J

    goto :goto_1e
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)V
    .registers 9

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->g:J

    .line 146
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1c

    .line 147
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->g:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 151
    :goto_13
    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->h:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->i:J

    .line 152
    return-void

    .line 149
    :cond_1c
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_13
.end method

.method public a(J)Z
    .registers 6

    .prologue
    .line 158
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->i:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b()V

    .line 113
    return-void
.end method

.method protected final c()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->b:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    return-object v0
.end method

.method protected final d()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->c:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-object v0
.end method
