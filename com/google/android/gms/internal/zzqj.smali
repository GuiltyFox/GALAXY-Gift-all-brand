.class public final Lcom/google/android/gms/internal/zzqj;
.super Lcom/google/android/gms/measurement/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/zze",
        "<",
        "Lcom/google/android/gms/internal/zzqj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->a:I

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzqj;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->a:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->a(I)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->b:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->b(I)V

    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->c:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->c(I)V

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->d:I

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->d:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->d(I)V

    :cond_24
    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->e:I

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->e:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->e(I)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqj;->a(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/gms/measurement/zze;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqj;->a(Lcom/google/android/gms/internal/zzqj;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqj;->f:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->b:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->c:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->c:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->d:I

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->d:I

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqj;->e:I

    return v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzqj;->e:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqj;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzqj;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
