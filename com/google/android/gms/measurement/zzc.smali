.class public final Lcom/google/android/gms/measurement/zzc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/zzf;

.field private final b:Lcom/google/android/gms/internal/zznl;

.field private c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/measurement/zze;",
            ">;",
            "Lcom/google/android/gms/measurement/zze;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/zzc;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->a:Lcom/google/android/gms/measurement/zzf;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->a:Lcom/google/android/gms/measurement/zzf;

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->b:Lcom/google/android/gms/internal/zznl;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->b:Lcom/google/android/gms/internal/zznl;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->d:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->e:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->f:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->g:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->h:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/measurement/zzc;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/measurement/zzc;->c(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/zze;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/zze;->a(Lcom/google/android/gms/measurement/zze;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_68
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/zzf;Lcom/google/android/gms/internal/zznl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/zzc;->a:Lcom/google/android/gms/measurement/zzf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/zzc;->b:Lcom/google/android/gms/internal/zznl;

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->g:J

    const-wide v0, 0xb43e9400L

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->h:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->k:Ljava/util/List;

    return-void
.end method

.method private static c(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_11

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "dataType doesn\'t have default constructor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "dataType default constructor is not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()Lcom/google/android/gms/measurement/zzc;
    .registers 2

    new-instance v0, Lcom/google/android/gms/measurement/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/zzc;-><init>(Lcom/google/android/gms/measurement/zzc;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/measurement/zzc;->e:J

    return-void
.end method

.method public a(Lcom/google/android/gms/measurement/zze;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/measurement/zze;

    if-eq v1, v2, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/zze;->a(Lcom/google/android/gms/measurement/zze;)V

    return-void
.end method

.method public b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;

    if-nez v0, :cond_13

    invoke-static {p1}, Lcom/google/android/gms/measurement/zzc;->c(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/measurement/zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->k:Ljava/util/List;

    return-object v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->d:J

    return-wide v0
.end method

.method public e()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/zzc;->i()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/zzg;->a(Lcom/google/android/gms/measurement/zzc;)V

    return-void
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->c:Z

    return v0
.end method

.method g()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->b:Lcom/google/android/gms/internal/zznl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->f:J

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->d:J

    :goto_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->c:Z

    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->b:Lcom/google/android/gms/internal/zznl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->d:J

    goto :goto_14
.end method

.method h()Lcom/google/android/gms/measurement/zzf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->a:Lcom/google/android/gms/measurement/zzf;

    return-object v0
.end method

.method i()Lcom/google/android/gms/measurement/zzg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->a:Lcom/google/android/gms/measurement/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzf;->o()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    return-object v0
.end method

.method j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->i:Z

    return v0
.end method

.method k()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->i:Z

    return-void
.end method
