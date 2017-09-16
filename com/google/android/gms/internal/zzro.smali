.class public Lcom/google/android/gms/internal/zzro;
.super Ljava/lang/Object;


# instance fields
.field protected final d:Lcom/google/android/gms/internal/zzrp;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzrp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzro;->d:Lcom/google/android/gms/internal/zzrp;

    return-void
.end method

.method protected static b(Lcom/google/android/gms/internal/zzrn;)Lcom/google/android/gms/internal/zzrp;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrn;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrn;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsd;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzsd;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrn;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrq;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzrq;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public f()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->d:Lcom/google/android/gms/internal/zzrp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrp;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 1

    return-void
.end method
