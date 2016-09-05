.class public abstract Lrx/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/Observer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private final b:Lrx/internal/util/SubscriptionList;

.field private final c:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lrx/Producer;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lrx/Subscriber;->a:Ljava/lang/Long;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lrx/Subscriber;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lrx/Subscriber;->e:J

    .line 80
    iput-object p1, p0, Lrx/Subscriber;->c:Lrx/Subscriber;

    .line 81
    if-eqz p2, :cond_16

    if-eqz p1, :cond_16

    iget-object v0, p1, Lrx/Subscriber;->b:Lrx/internal/util/SubscriptionList;

    :goto_13
    iput-object v0, p0, Lrx/Subscriber;->b:Lrx/internal/util/SubscriptionList;

    .line 82
    return-void

    .line 81
    :cond_16
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    goto :goto_13
.end method

.method private b(J)V
    .registers 8

    .prologue
    .line 161
    iget-wide v0, p0, Lrx/Subscriber;->e:J

    sget-object v2, Lrx/Subscriber;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 162
    iput-wide p1, p0, Lrx/Subscriber;->e:J

    .line 172
    :goto_e
    return-void

    .line 164
    :cond_f
    iget-wide v0, p0, Lrx/Subscriber;->e:J

    add-long/2addr v0, p1

    .line 166
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_20

    .line 167
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lrx/Subscriber;->e:J

    goto :goto_e

    .line 169
    :cond_20
    iput-wide v0, p0, Lrx/Subscriber;->e:J

    goto :goto_e
.end method


# virtual methods
.method protected final a(J)V
    .registers 6

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "number requested cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_20
    monitor-enter p0

    .line 149
    :try_start_21
    iget-object v0, p0, Lrx/Subscriber;->d:Lrx/Producer;

    if-eqz v0, :cond_2c

    .line 150
    iget-object v0, p0, Lrx/Subscriber;->d:Lrx/Producer;

    .line 155
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_31

    .line 157
    invoke-interface {v0, p1, p2}, Lrx/Producer;->a(J)V

    .line 158
    :goto_2b
    return-void

    .line 152
    :cond_2c
    :try_start_2c
    invoke-direct {p0, p1, p2}, Lrx/Subscriber;->b(J)V

    .line 153
    monitor-exit p0

    goto :goto_2b

    .line 155
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    throw v0
.end method

.method public a(Lrx/Producer;)V
    .registers 8

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    monitor-enter p0

    .line 193
    :try_start_2
    iget-wide v2, p0, Lrx/Subscriber;->e:J

    .line 194
    iput-object p1, p0, Lrx/Subscriber;->d:Lrx/Producer;

    .line 195
    iget-object v1, p0, Lrx/Subscriber;->c:Lrx/Subscriber;

    if-eqz v1, :cond_15

    .line 197
    sget-object v1, Lrx/Subscriber;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    .line 199
    const/4 v0, 0x1

    .line 202
    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_20

    .line 204
    if-eqz v0, :cond_23

    .line 205
    iget-object v0, p0, Lrx/Subscriber;->c:Lrx/Subscriber;

    iget-object v1, p0, Lrx/Subscriber;->d:Lrx/Producer;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->a(Lrx/Producer;)V

    .line 214
    :goto_1f
    return-void

    .line 202
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    .line 208
    :cond_23
    sget-object v0, Lrx/Subscriber;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_38

    .line 209
    iget-object v0, p0, Lrx/Subscriber;->d:Lrx/Producer;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lrx/Producer;->a(J)V

    goto :goto_1f

    .line 211
    :cond_38
    iget-object v0, p0, Lrx/Subscriber;->d:Lrx/Producer;

    invoke-interface {v0, v2, v3}, Lrx/Producer;->a(J)V

    goto :goto_1f
.end method

.method public final a(Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lrx/Subscriber;->b:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->a(Lrx/Subscription;)V

    .line 94
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lrx/Subscriber;->b:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->b()V

    .line 99
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lrx/Subscriber;->b:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method
