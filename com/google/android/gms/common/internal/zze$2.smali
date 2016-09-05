.class final Lcom/google/android/gms/common/internal/zze$2;
.super Lcom/google/android/gms/common/internal/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zze;->a(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/internal/zze;
.end annotation


# instance fields
.field final synthetic p:C

.field final synthetic q:C


# direct methods
.method constructor <init>(CC)V
    .registers 3

    iput-char p1, p0, Lcom/google/android/gms/common/internal/zze$2;->p:C

    iput-char p2, p0, Lcom/google/android/gms/common/internal/zze$2;->q:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public b(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$2;->p:C

    if-eq p1, v0, :cond_8

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$2;->q:C

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
