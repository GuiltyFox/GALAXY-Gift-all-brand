.class Lcom/google/android/gms/tagmanager/zzcb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcb$zza;
    }
.end annotation


# static fields
.field private static zzbeJ:Lcom/google/android/gms/tagmanager/zzcb;


# instance fields
.field private volatile zzbcF:Ljava/lang/String;

.field private volatile zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

.field private volatile zzbeL:Ljava/lang/String;

.field private volatile zzbeM:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcb;->clear()V

    return-void
.end method

.method static zzEY()Lcom/google/android/gms/tagmanager/zzcb;
    .registers 2

    const-class v1, Lcom/google/android/gms/tagmanager/zzcb;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeJ:Lcom/google/android/gms/tagmanager/zzcb;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeJ:Lcom/google/android/gms/tagmanager/zzcb;

    :cond_e
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeJ:Lcom/google/android/gms/tagmanager/zzcb;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private zzfw(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private zzq(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&gtm_debug=x"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbeN:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeL:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbcF:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeM:Ljava/lang/String;

    return-void
.end method

.method getContainerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbcF:Ljava/lang/String;

    return-object v0
.end method

.method zzEZ()Lcom/google/android/gms/tagmanager/zzcb$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

    return-object v0
.end method

.method zzFa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeL:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized zzp(Landroid/net/Uri;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_d} :catch_6f
    .catchall {:try_start_3 .. :try_end_d} :catchall_77

    move-result-object v2

    :try_start_e
    const-string/jumbo v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Container preview url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    const-string/jumbo v1, ".*?&gtm_debug=x$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbeP:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

    :goto_3b
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzcb;->zzq(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeM:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbeO:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-eq v1, v2, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbeP:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-ne v1, v2, :cond_65

    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/r?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeL:Ljava/lang/String;

    :cond_65
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeM:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/zzcb;->zzfw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbcF:Ljava/lang/String;
    :try_end_6d
    .catchall {:try_start_e .. :try_end_6d} :catchall_77

    :goto_6d
    monitor-exit p0

    return v0

    :catch_6f
    move-exception v0

    move v0, v1

    goto :goto_6d

    :cond_72
    :try_start_72
    sget-object v1, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbeO:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_77

    goto :goto_3b

    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7a
    :try_start_7a
    const-string/jumbo v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/zzcb;->zzfw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbcF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit preview mode for container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbcF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbeN:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeL:Ljava/lang/String;

    goto :goto_6d

    :cond_b4
    move v0, v1

    goto :goto_6d

    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid preview uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_7a .. :try_end_cd} :catchall_77

    move v0, v1

    goto :goto_6d
.end method
