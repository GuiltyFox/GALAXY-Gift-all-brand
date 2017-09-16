.class Lcom/google/android/gms/internal/zzrq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrq;->b(Ljava/lang/String;Lcom/google/android/gms/internal/zzro;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzro;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/zzrq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrq;Lcom/google/android/gms/internal/zzro;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrq$1;->c:Lcom/google/android/gms/internal/zzrq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrq$1;->a:Lcom/google/android/gms/internal/zzro;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrq$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->c:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->a(Lcom/google/android/gms/internal/zzrq;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrq$1;->a:Lcom/google/android/gms/internal/zzro;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->c:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->b(Lcom/google/android/gms/internal/zzrq;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->c:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->b(Lcom/google/android/gms/internal/zzrq;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrq$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzro;->a(Landroid/os/Bundle;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->c:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->a(Lcom/google/android/gms/internal/zzrq;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->a:Lcom/google/android/gms/internal/zzro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzro;->a()V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->c:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->a(Lcom/google/android/gms/internal/zzrq;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->a:Lcom/google/android/gms/internal/zzro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzro;->b()V

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->c:Lcom/google/android/gms/internal/zzrq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->a(Lcom/google/android/gms/internal/zzrq;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrq$1;->a:Lcom/google/android/gms/internal/zzro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzro;->g()V

    :cond_4c
    return-void

    :cond_4d
    const/4 v0, 0x0

    goto :goto_1f
.end method
