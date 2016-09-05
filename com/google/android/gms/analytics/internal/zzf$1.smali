.class Lcom/google/android/gms/analytics/internal/zzf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzf;->a()Ljava/lang/Thread$UncaughtExceptionHandler;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzf$1;->a:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzf$1;->a:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->g()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v1, "Job execution failed"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/analytics/internal/zzaf;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method
