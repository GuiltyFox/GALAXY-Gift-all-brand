.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private a:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    .line 26
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_e
    iput-object p1, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lokio/Timeout;)Lokio/ForwardingTimeout;
    .registers 4

    .prologue
    .line 36
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_b
    iput-object p1, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    .line 38
    return-object p0
.end method

.method public final a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    return-object v0
.end method

.method public a(J)Lokio/Timeout;
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0, p1, p2}, Lokio/Timeout;->a(J)Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .registers 5

    .prologue
    .line 42
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lokio/Timeout;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->f()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->g()V

    .line 71
    return-void
.end method

.method public k_()J
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->k_()J

    move-result-wide v0

    return-wide v0
.end method

.method public l_()Z
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->l_()Z

    move-result v0

    return v0
.end method

.method public m_()Lokio/Timeout;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->m_()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
