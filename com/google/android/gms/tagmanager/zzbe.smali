.class Lcom/google/android/gms/tagmanager/zzbe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcd;


# instance fields
.field private final zzRA:Ljava/lang/String;

.field private final zzRv:J

.field private final zzRw:I

.field private zzRx:D

.field private zzRy:J

.field private final zzRz:Ljava/lang/Object;

.field private final zzbem:J

.field private final zzqD:Lcom/google/android/gms/internal/zznl;


# direct methods
.method public constructor <init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/zznl;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRz:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRw:I

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRw:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRx:D

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRv:J

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzbem:J

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRA:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzqD:Lcom/google/android/gms/internal/zznl;

    return-void
.end method


# virtual methods
.method public zzlf()Z
    .registers 13

    const/4 v0, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzqD:Lcom/google/android/gms/internal/zznl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zznl;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRy:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzbem:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Excessive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    monitor-exit v1

    :goto_37
    return v0

    :cond_38
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRx:D

    iget v6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRw:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5c

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRy:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRv:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_5c

    iget v6, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRw:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRx:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRx:D

    :cond_5c
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRy:J

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRx:D

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_6f

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRx:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRx:D

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_37

    :catchall_6c
    move-exception v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6 .. :try_end_6e} :catchall_6c

    throw v0

    :cond_6f
    :try_start_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Excessive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzRA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_6c

    goto :goto_37
.end method
