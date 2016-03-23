.class abstract Lcom/google/android/gms/internal/zzmi$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation


# instance fields
.field private final zzagO:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzmh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi$zza;->zzagO:Lcom/google/android/gms/internal/zzmh;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzmi;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmi;->zzb(Lcom/google/android/gms/internal/zzmi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/internal/zzmi;->zzc(Lcom/google/android/gms/internal/zzmi;)Lcom/google/android/gms/internal/zzmh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi$zza;->zzagO:Lcom/google/android/gms/internal/zzmh;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_22

    if-eq v0, v1, :cond_17

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmi;->zzb(Lcom/google/android/gms/internal/zzmi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_16
    return-void

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi$zza;->zzpc()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_22

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmi;->zzb(Lcom/google/android/gms/internal/zzmi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_16

    :catchall_22
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmi;->zzb(Lcom/google/android/gms/internal/zzmi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract zzpc()V
.end method
