.class public final Lcom/jaalee/sdk/service/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/jaalee/sdk/service/s;

    invoke-direct {v0}, Lcom/jaalee/sdk/service/s;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/jaalee/sdk/service/r;->a:J

    iput-wide p3, p0, Lcom/jaalee/sdk/service/r;->b:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/jaalee/sdk/service/r;

    iget-wide v2, p0, Lcom/jaalee/sdk/service/r;->a:J

    iget-wide v4, p1, Lcom/jaalee/sdk/service/r;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-wide v2, p0, Lcom/jaalee/sdk/service/r;->b:J

    iget-wide v4, p1, Lcom/jaalee/sdk/service/r;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 8

    const/16 v6, 0x20

    iget-wide v0, p0, Lcom/jaalee/sdk/service/r;->a:J

    iget-wide v2, p0, Lcom/jaalee/sdk/service/r;->a:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/jaalee/sdk/service/r;->b:J

    iget-wide v4, p0, Lcom/jaalee/sdk/service/r;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "scanPeriodMillis"

    iget-wide v2, p0, Lcom/jaalee/sdk/service/r;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;J)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "waitTimeMillis"

    iget-wide v2, p0, Lcom/jaalee/sdk/service/r;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;J)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaalee/sdk/internal/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/jaalee/sdk/service/r;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/jaalee/sdk/service/r;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
