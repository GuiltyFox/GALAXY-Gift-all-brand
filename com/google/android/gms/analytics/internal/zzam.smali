.class public Lcom/google/android/gms/analytics/internal/zzam;
.super Ljava/lang/Object;


# static fields
.field private static final zzSa:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzam;->zzSa:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static zzK(Z)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_6

    const-string/jumbo v0, "1"

    :goto_5
    return-object v0

    :cond_6
    const-string/jumbo v0, "0"

    goto :goto_5
.end method

.method public static zza(Ljava/lang/String;D)D
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-wide p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static zza(Lcom/google/android/gms/analytics/internal/zzaf;Ljava/lang/String;)Lcom/google/android/gms/internal/zzqi;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    :try_end_2a
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_2a} :catch_50

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :catch_50
    move-exception v1

    const-string/jumbo v2, "No valid campaign data found"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    :cond_58
    new-instance v1, Lcom/google/android/gms/internal/zzqi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzqi;-><init>()V

    const-string/jumbo v0, "utm_content"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzeh(Ljava/lang/String;)V

    const-string/jumbo v0, "utm_medium"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzef(Ljava/lang/String;)V

    const-string/jumbo v0, "utm_campaign"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->setName(Ljava/lang/String;)V

    const-string/jumbo v0, "utm_source"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzee(Ljava/lang/String;)V

    const-string/jumbo v0, "utm_term"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzeg(Ljava/lang/String;)V

    const-string/jumbo v0, "utm_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzei(Ljava/lang/String;)V

    const-string/jumbo v0, "anid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzej(Ljava/lang/String;)V

    const-string/jumbo v0, "gclid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzek(Ljava/lang/String;)V

    const-string/jumbo v0, "dclid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzel(Ljava/lang/String;)V

    const-string/jumbo v0, "aclid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqi;->zzem(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_a
.end method

.method public static zza(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static zza(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzam;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(DLjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const-wide/high16 v4, 0x4059000000000000L

    const-wide/16 v2, 0x0

    cmpg-double v1, p0, v2

    if-lez v1, :cond_d

    cmpl-double v1, p0, v4

    if-ltz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/zzam;->zzbt(Ljava/lang/String;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x2710

    int-to-double v2, v1

    mul-double/2addr v4, p0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_16

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_15
    return v0

    :catch_16
    move-exception v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Class;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;Z)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-boolean v1, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v1, :cond_1d

    if-eqz p2, :cond_1a

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_18} :catch_1c

    if-eqz v0, :cond_1d

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :catch_1c
    move-exception v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static zzb(Ljava/util/Map;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p2, :cond_f

    const-string/jumbo v0, "1"

    :goto_b
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void

    :cond_f
    const-string/jumbo v0, "0"

    goto :goto_b
.end method

.method public static zzbp(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_13
    if-ge v2, v6, :cond_6b

    aget-object v0, v5, v2

    const-string/jumbo v7, "="

    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    if-le v0, v9, :cond_5a

    aget-object v8, v7, v3

    aget-object v0, v7, v9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    move-object v0, v1

    :goto_2c
    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, v7

    if-ne v0, v11, :cond_50

    aget-object v0, v7, v9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    aget-object v0, v7, v9

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    aget-object v8, v7, v9

    aget-object v0, v7, v10

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    move-object v0, v1

    :goto_4d
    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    :goto_50
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_54
    aget-object v0, v7, v9

    goto :goto_2c

    :cond_57
    aget-object v0, v7, v10

    goto :goto_4d

    :cond_5a
    array-length v0, v7

    if-ne v0, v9, :cond_50

    aget-object v0, v7, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_50

    aget-object v0, v7, v3

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_6b
    return-object v4
.end method

.method public static zzbq(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    :catch_a
    move-exception v2

    goto :goto_4
.end method

.method public static zzbr(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    const-string/jumbo v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string/jumbo v2, "[\\?]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v4, :cond_20

    aget-object p0, v2, v4

    :cond_20
    const-string/jumbo v2, "%3D"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_be

    :try_start_29
    const-string/jumbo v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_2f} :catch_ba

    move-result-object p0

    :cond_30
    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzam;->zzbp(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const/16 v1, 0xb

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "dclid"

    aput-object v1, v3, v0

    const-string/jumbo v1, "utm_source"

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string/jumbo v4, "gclid"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v4, "aclid"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v4, "utm_campaign"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v4, "utm_medium"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "utm_term"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string/jumbo v4, "utm_content"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string/jumbo v4, "utm_id"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    const-string/jumbo v4, "anid"

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string/jumbo v4, "gmob_t"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_81
    array-length v0, v3

    if-ge v1, v0, :cond_ca

    aget-object v0, v3, v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9e

    const-string/jumbo v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9e
    aget-object v0, v3, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v0, v3, v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_81

    :catch_ba
    move-exception v0

    move-object v0, v1

    goto/16 :goto_a

    :cond_be
    const-string/jumbo v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    move-object v0, v1

    goto/16 :goto_a

    :cond_ca
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a
.end method

.method public static zzbs(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x2

    if-ge v1, v0, :cond_11

    :try_start_5
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_8} :catch_c

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static zzbt(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_11
    if-ltz v1, :cond_2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v0, v0, 0x6

    const v3, 0xfffffff

    and-int/2addr v0, v3

    add-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0xe

    add-int/2addr v0, v2

    const/high16 v2, 0xfe00000

    and-int/2addr v2, v0

    if-eqz v2, :cond_29

    shr-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_2c
    return v0
.end method

.method public static zzbu(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string/jumbo v1, "http:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_b

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static zzd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_11

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public static zze(Ljava/lang/String;Z)Z
    .registers 3

    if-eqz p0, :cond_1e

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 p1, 0x1

    :cond_1e
    :goto_1e
    return p1

    :cond_1f
    const-string/jumbo v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_3a
    const/4 p1, 0x0

    goto :goto_1e
.end method
