.class public final Lcom/google/android/gms/internal/zzmn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmn$zza;,
        Lcom/google/android/gms/internal/zzmn$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final zzagR:Lcom/google/android/gms/internal/zzmn$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmn",
            "<T",
            "L;",
            ">.zza;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzmn$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzmn$zza;-><init>(Lcom/google/android/gms/internal/zzmn;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzagR:Lcom/google/android/gms/internal/zzmn$zza;

    const-string/jumbo v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmn;->mListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmn;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzmn$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmn$zzb",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "Notifier must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzagR:Lcom/google/android/gms/internal/zzmn$zza;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzmn$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzagR:Lcom/google/android/gms/internal/zzmn$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmn$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzmn$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmn$zzb",
            "<-T",
            "L;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->mListener:Ljava/lang/Object;

    if-nez v0, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmn$zzb;->zzpb()V

    :goto_7
    return-void

    :cond_8
    :try_start_8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzmn$zzb;->zzs(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_7

    :catch_c
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmn$zzb;->zzpb()V

    throw v0
.end method