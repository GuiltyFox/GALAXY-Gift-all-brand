.class final Lcom/jaalee/sdk/service/k;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/jaalee/sdk/Region;

.field final b:Landroid/os/Messenger;

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/jaalee/sdk/Region;Landroid/os/Messenger;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jaalee/sdk/service/k;->c:J

    iput-object p1, p0, Lcom/jaalee/sdk/service/k;->a:Lcom/jaalee/sdk/Region;

    iput-object p2, p0, Lcom/jaalee/sdk/service/k;->b:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .registers 6

    const/4 v0, 0x1

    iput-wide p1, p0, Lcom/jaalee/sdk/service/k;->c:J

    iget-boolean v1, p0, Lcom/jaalee/sdk/service/k;->d:Z

    if-nez v1, :cond_a

    iput-boolean v0, p0, Lcom/jaalee/sdk/service/k;->d:Z

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final b(J)Z
    .registers 12

    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/jaalee/sdk/service/k;->d:Z

    if-eqz v2, :cond_22

    iget-wide v2, p0, Lcom/jaalee/sdk/service/k;->c:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_20

    iget-wide v2, p0, Lcom/jaalee/sdk/service/k;->c:J

    sub-long v2, p1, v2

    sget-wide v4, Lcom/jaalee/sdk/service/BeaconService;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_20

    move v2, v0

    :goto_19
    if-nez v2, :cond_22

    iput-wide v6, p0, Lcom/jaalee/sdk/service/k;->c:J

    iput-boolean v1, p0, Lcom/jaalee/sdk/service/k;->d:Z

    :goto_1f
    return v0

    :cond_20
    move v2, v1

    goto :goto_19

    :cond_22
    move v0, v1

    goto :goto_1f
.end method
