.class Lcom/google/android/gms/analytics/internal/zzaj;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zznl;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zznl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzaj;->a:Lcom/google/android/gms/internal/zznl;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zznl;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzaj;->a:Lcom/google/android/gms/internal/zznl;

    iput-wide p2, p0, Lcom/google/android/gms/analytics/internal/zzaj;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaj;->a:Lcom/google/android/gms/internal/zznl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzaj;->b:J

    return-void
.end method

.method public a(J)Z
    .registers 10

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/zzaj;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzaj;->a:Lcom/google/android/gms/internal/zznl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zznl;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/analytics/internal/zzaj;->b:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gtz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzaj;->b:J

    return-void
.end method
