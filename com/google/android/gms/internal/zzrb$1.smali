.class Lcom/google/android/gms/internal/zzrb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrb;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzrb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$1;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$1;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->b(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/common/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$1;->a:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrb;->a(Lcom/google/android/gms/internal/zzrb;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->c(Landroid/content/Context;)V

    return-void
.end method
