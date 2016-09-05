.class public Lcom/google/android/gms/analytics/Tracker;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private a:Z

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/analytics/internal/zzad;

.field private final e:Lcom/google/android/gms/analytics/Tracker$zza;

.field private f:Lcom/google/android/gms/analytics/ExceptionReporter;

.field private g:Lcom/google/android/gms/analytics/internal/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Ljava/lang/String;Lcom/google/android/gms/analytics/internal/zzad;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    const-string/jumbo v1, "&tid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    const-string/jumbo v1, "useSecure"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    const-string/jumbo v1, "&a"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_54

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzad;

    const-string/jumbo v1, "tracking"

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzad;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->d:Lcom/google/android/gms/analytics/internal/zzad;

    :goto_4c
    new-instance v0, Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/Tracker$zza;-><init>(Lcom/google/android/gms/analytics/Tracker;Lcom/google/android/gms/analytics/internal/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->e:Lcom/google/android/gms/analytics/Tracker$zza;

    return-void

    :cond_54
    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->d:Lcom/google/android/gms/analytics/internal/zzad;

    goto :goto_4c
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->e:Lcom/google/android/gms/analytics/Tracker$zza;

    return-object v0
.end method

.method static a(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    const-string/jumbo v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v0, v1

    goto :goto_a
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->b(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method private static a(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zza;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->y()Lcom/google/android/gms/analytics/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static b(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->b(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzk;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->z()Lcom/google/android/gms/analytics/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->f:Lcom/google/android/gms/analytics/ExceptionReporter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzu;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->A()Lcom/google/android/gms/analytics/internal/zzu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzu;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->A()Lcom/google/android/gms/analytics/internal/zzu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzad;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->d:Lcom/google/android/gms/analytics/internal/zzad;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzaf;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzaf;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzb;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->t()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzb;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->t()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/internal/zzal;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->e:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$zza;->E()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->v()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string/jumbo v1, "&an"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->v()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string/jumbo v1, "&av"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public a(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->e:Lcom/google/android/gms/analytics/Tracker$zza;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/Tracker$zza;->a(J)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .registers 6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://hostname/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "utm_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&ci"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    const-string/jumbo v1, "anid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&anid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    const-string/jumbo v1, "utm_campaign"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&cn"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    const-string/jumbo v1, "utm_content"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_72

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&cc"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    const-string/jumbo v1, "utm_medium"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&cm"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    const-string/jumbo v1, "utm_source"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&cs"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    const-string/jumbo v1, "utm_term"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a5

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&ck"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    const-string/jumbo v1, "dclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b6

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&dclid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    const-string/jumbo v1, "gclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c7

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v3, "&gclid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c7
    const-string/jumbo v1, "aclid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    const-string/jumbo v2, "&aclid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8
.end method

.method a(Lcom/google/android/gms/analytics/internal/zzal;)V
    .registers 6

    const-string/jumbo v0, "Loading Tracker config values"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&tid"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "trackingId loaded"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->c()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&sf"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Sample frequency loaded"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->e()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->f()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/Tracker;->a(J)V

    const-string/jumbo v1, "Session timeout loaded"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->g()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->b(Z)V

    const-string/jumbo v1, "Auto activity tracking loaded"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->i()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->j()Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo v1, "&aip"

    const-string/jumbo v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    const-string/jumbo v1, "Anonymize ip loaded"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9a
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->g:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->k()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "&cd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "Key should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public a(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->a()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->s()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "AppOptOut is set to true. Not sending Google Analytics hit"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->c(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->s()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->e()Z

    move-result v8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {p1, v3}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    const-string/jumbo v2, "useSecure"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzam;->a(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/google/android/gms/analytics/Tracker;->b(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string/jumbo v0, "t"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Missing hit type parameter"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_19

    :cond_62
    const-string/jumbo v0, "tid"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Missing tracking id parameter"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_19

    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->b()Z

    move-result v4

    monitor-enter p0

    :try_start_81
    const-string/jumbo v0, "screenview"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string/jumbo v0, "pageview"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string/jumbo v0, "appview"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c5

    :cond_a2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    const-string/jumbo v2, "&a"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-lt v0, v2, :cond_b9

    move v0, v1

    :cond_b9
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->b:Ljava/util/Map;

    const-string/jumbo v2, "&a"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c5
    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_81 .. :try_end_c6} :catchall_d5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->r()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/Tracker$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/analytics/Tracker$1;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_19

    :catchall_d5
    move-exception v0

    :try_start_d6
    monitor-exit p0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v0
.end method

.method public a(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker;->c()Z

    move-result v0

    if-ne v0, p1, :cond_9

    monitor-exit p0

    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->f:Lcom/google/android/gms/analytics/ExceptionReporter;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->f:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string/jumbo v0, "Uncaught exceptions will be reported to Google Analytics"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->b(Ljava/lang/String;)V

    :goto_25
    monitor-exit p0

    goto :goto_8

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->f:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ExceptionReporter;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string/jumbo v0, "Uncaught exceptions will not be reported to Google Analytics"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->b(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_27

    goto :goto_25
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->e:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker$zza;->a(Z)V

    return-void
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker;->a:Z

    return v0
.end method
