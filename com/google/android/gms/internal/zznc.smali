.class public final Lcom/google/android/gms/internal/zznc;
.super Lcom/google/android/gms/analytics/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzg",
        "<",
        "Lcom/google/android/gms/internal/zznc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zznc;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/zznc;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zznc;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzg;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->a(I)I

    iput p2, p0, Lcom/google/android/gms/internal/zznc;->b:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznc;->g:Z

    return-void
.end method

.method static a()I
    .registers 6

    const-wide/32 v4, 0x7fffffff

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v4

    long-to-int v0, v2

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "GAv4"

    const-string/jumbo v1, "UUID.randomUUID() returned 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_f
.end method

.method private e()V
    .registers 1

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznc;->e()V

    iput p1, p0, Lcom/google/android/gms/internal/zznc;->b:I

    return-void
.end method

.method public synthetic a(Lcom/google/android/gms/analytics/zzg;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zznc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznc;->a(Lcom/google/android/gms/internal/zznc;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zznc;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zznc;->a(Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/zznc;->b:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/zznc;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zznc;->a(I)V

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/zznc;->c:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/google/android/gms/internal/zznc;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zznc;->b(I)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zznc;->b(Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zznc;->c(Ljava/lang/String;)V

    :cond_39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznc;->f:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznc;->f:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zznc;->b(Z)V

    :cond_42
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznc;->g:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznc;->g:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zznc;->a(Z)V

    :cond_4b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznc;->e()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznc;->e()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznc;->g:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznc;->e()V

    iput p1, p0, Lcom/google/android/gms/internal/zznc;->c:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznc;->e()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznc;->e()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zznc;->f:Z

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zznc;->b:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznc;->e()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zznc;->e:Ljava/lang/String;

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/internal/zznc;->e:Ljava/lang/String;

    goto :goto_c
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zznc;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zznc;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zznc;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/zznc;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/zznc;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zznc;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/zznc;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
