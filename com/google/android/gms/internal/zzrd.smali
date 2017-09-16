.class public final Lcom/google/android/gms/internal/zzrd;
.super Lcom/google/android/gms/common/api/GoogleApiClient;

# interfaces
.implements Lcom/google/android/gms/internal/zzrm$zza;


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<**>;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/android/gms/internal/zzrj;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/google/android/gms/common/internal/zzf;

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzxp;",
            "Lcom/google/android/gms/internal/zzxq;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzsf;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lcom/google/android/gms/internal/zzsg;

.field private final j:Ljava/util/concurrent/locks/Lock;

.field private k:Z

.field private final l:Lcom/google/android/gms/common/internal/zzk;

.field private m:Lcom/google/android/gms/internal/zzrm;

.field private final n:I

.field private final o:Landroid/content/Context;

.field private final p:Landroid/os/Looper;

.field private volatile q:Z

.field private r:J

.field private s:J

.field private final t:Lcom/google/android/gms/internal/zzrd$zza;

.field private final u:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final v:Lcom/google/android/gms/internal/zzrs;

.field private final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzqr;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Integer;

.field private final y:Lcom/google/android/gms/common/internal/zzk$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzxp;",
            "Lcom/google/android/gms/internal/zzxq;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzqr;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzrd;->r:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzrd;->s:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->d:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzrs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzrs;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->v:Lcom/google/android/gms/internal/zzrs;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzrd$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzrd$1;-><init>(Lcom/google/android/gms/internal/zzrd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->y:Lcom/google/android/gms/common/internal/zzk$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrd;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrd;->k:Z

    new-instance v2, Lcom/google/android/gms/common/internal/zzk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrd;->y:Lcom/google/android/gms/common/internal/zzk$zza;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzk$zza;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrd;->p:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/zzrd$zza;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/zzrd$zza;-><init>(Lcom/google/android/gms/internal/zzrd;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->t:Lcom/google/android/gms/internal/zzrd$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzrd;->u:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/zzrd;->n:I

    iget v2, p0, Lcom/google/android/gms/internal/zzrd;->n:I

    if-ltz v2, :cond_5b

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    :cond_5b
    iput-object p7, p0, Lcom/google/android/gms/internal/zzrd;->f:Ljava/util/Map;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd;->w:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/zzsg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzsg;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzrd;->i:Lcom/google/android/gms/internal/zzsg;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzk;->a(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_70

    :cond_82
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzk;->a(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_86

    :cond_98
    iput-object p4, p0, Lcom/google/android/gms/internal/zzrd;->e:Lcom/google/android/gms/common/internal/zzf;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzrd;->g:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->d()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v2, v3

    :cond_1b
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->f()Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v3

    :goto_22
    move v1, v0

    goto :goto_8

    :cond_24
    if-eqz v2, :cond_2c

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2b

    const/4 v3, 0x2

    :cond_2b
    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x3

    goto :goto_2b

    :cond_2e
    move v0, v1

    goto :goto_22
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzrd;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrd;->m()V

    return-void
.end method

.method static b(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const-string/jumbo v0, "UNKNOWN"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "SIGN_IN_MODE_NONE"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzrd;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrd;->n()V

    return-void
.end method

.method private c(I)V
    .registers 14

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    if-nez v1, :cond_11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    if-eqz v1, :cond_67

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrd;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrd;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cannot use sign-in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". Mode was already set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->d()Z

    move-result v5

    if-eqz v5, :cond_86

    move v2, v3

    :cond_86
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->f()Z

    move-result v0

    if-eqz v0, :cond_108

    move v0, v3

    :goto_8d
    move v1, v0

    goto :goto_73

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_10a

    :cond_98
    :pswitch_98
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrd;->k:Z

    if-eqz v0, :cond_eb

    if-nez v2, :cond_eb

    if-nez v1, :cond_eb

    new-instance v0, Lcom/google/android/gms/internal/zzqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrd;->p:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrd;->u:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzrd;->f:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzrd;->w:Ljava/util/ArrayList;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzqu;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzrd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    goto/16 :goto_10

    :pswitch_b8
    if-nez v2, :cond_c3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c3
    if-eqz v1, :cond_98

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_ce
    if-eqz v2, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrd;->p:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrd;->u:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzrd;->e:Lcom/google/android/gms/common/internal/zzf;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzrd;->f:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzrd;->g:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzrd;->w:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqt;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzrd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/zzqt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    goto/16 :goto_10

    :cond_eb
    new-instance v0, Lcom/google/android/gms/internal/zzrf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzrd;->p:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzrd;->u:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzrd;->e:Lcom/google/android/gms/common/internal/zzf;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzrd;->f:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzrd;->g:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v10, p0, Lcom/google/android/gms/internal/zzrd;->w:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzrf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzrd;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzrm$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    goto/16 :goto_10

    :cond_108
    move v0, v1

    goto :goto_8d

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_ce
        :pswitch_98
    .end packed-switch
.end method

.method private l()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrm;->a()V

    return-void
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrd;->l()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrd;->l()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->p:Landroid/os/Looper;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzqo$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->b()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->b()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->c()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->c()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->f()Ljava/lang/String;

    move-result-object v0

    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzaa;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    if-nez v0, :cond_6c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_66
    const/4 v0, 0x0

    goto :goto_7

    :cond_68
    const-string/jumbo v0, "the API"

    goto :goto_25

    :cond_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->f()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_77
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->i:Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzsg;->a(Lcom/google/android/gms/internal/zzqq;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqo$zza;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_91
    .catchall {:try_start_6c .. :try_end_91} :catchall_5f

    goto :goto_77

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_97
    return-object p1

    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzrm;->a(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_5f

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_97
.end method

.method public a(I)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_e

    const/4 v1, 0x2

    if-ne p1, v1, :cond_33

    :cond_e
    :goto_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Illegal sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrd;->c(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrd;->l()V
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_35

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_e

    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(IZ)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->g()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->i:Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsg;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->a()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrd;->l()V

    :cond_1d
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrd;->a(Lcom/google/android/gms/internal/zzqo$zza;)Lcom/google/android/gms/internal/zzqo$zza;

    goto :goto_0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->u:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->o:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->h()Z

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->f()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->a()V

    :cond_21
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->a(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzsf;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrd;->q:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->i:Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzsg;->a(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzrm;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method b(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget v1, p0, Lcom/google/android/gms/internal/zzrd;->n:I

    if-ltz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    const-string/jumbo v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(ZLjava/lang/Object;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrd;->a(I)V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrd;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3a

    goto :goto_15

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_3a
.end method

.method public b(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->b(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/zzsf;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;

    if-nez v0, :cond_1d

    const-string/jumbo v0, "GoogleApiClientImpl"

    const-string/jumbo v1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_34

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "GoogleApiClientImpl"

    const-string/jumbo v1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_34

    goto :goto_17

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->i()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrm;->d()V
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_34

    goto :goto_17
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->i:Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsg;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrm;->b()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->v:Lcom/google/android/gms/internal/zzrs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrs;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqo$zza;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzqo$zza;->a(Lcom/google/android/gms/internal/zzsg$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo$zza;->e()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    goto :goto_1e

    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_32

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_47
    return-void

    :cond_48
    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->h()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->l:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->a()V
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_47
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->m:Lcom/google/android/gms/internal/zzrm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzrm;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrd;->q:Z

    return v0
.end method

.method g()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzrd;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->b:Lcom/google/android/gms/internal/zzrj;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->u:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzrd$zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzrd$zzb;-><init>(Lcom/google/android/gms/internal/zzrd;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzrj$zza;)Lcom/google/android/gms/internal/zzrj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd;->b:Lcom/google/android/gms/internal/zzrj;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->t:Lcom/google/android/gms/internal/zzrd$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->t:Lcom/google/android/gms/internal/zzrd$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzrd$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrd;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzrd$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->t:Lcom/google/android/gms/internal/zzrd$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->t:Lcom/google/android/gms/internal/zzrd$zza;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzrd$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrd;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzrd$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7
.end method

.method h()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrd;->f()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_8
    return v0

    :cond_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrd;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->t:Lcom/google/android/gms/internal/zzrd$zza;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzrd$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->t:Lcom/google/android/gms/internal/zzrd$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrd$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->b:Lcom/google/android/gms/internal/zzrj;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd;->b:Lcom/google/android/gms/internal/zzrj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrj;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrd;->b:Lcom/google/android/gms/internal/zzrj;

    :cond_22
    move v0, v1

    goto :goto_8
.end method

.method i()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1f

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_f

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrd;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method j()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/internal/zzrd;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
