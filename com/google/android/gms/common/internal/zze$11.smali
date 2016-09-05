.class final Lcom/google/android/gms/common/internal/zze$11;
.super Lcom/google/android/gms/common/internal/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zze;->a(C)Lcom/google/android/gms/common/internal/zze;
.end annotation


# instance fields
.field final synthetic p:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    iput-char p1, p0, Lcom/google/android/gms/common/internal/zze$11;->p:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze;
    .registers 3

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$11;->p:C

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/zze;->b(C)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p1

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zze;->a(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze;

    move-result-object p1

    goto :goto_8
.end method

.method public b(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$11;->p:C

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
