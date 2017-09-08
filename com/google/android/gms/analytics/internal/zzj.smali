.class Lcom/google/android/gms/analytics/internal/zzj;
.super Lcom/google/android/gms/analytics/internal/zzd;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/google/android/gms/analytics/internal/zzj$zza;

.field private final d:Lcom/google/android/gms/analytics/internal/zzal;

.field private final e:Lcom/google/android/gms/analytics/internal/zzal;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "hits2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "hit_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "hit_time"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string/jumbo v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzj;->a:Ljava/lang/String;

    const-string/jumbo v0, "SELECT MAX(%s) FROM %s WHERE 1;"

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "hit_time"

    aput-object v2, v1, v4

    const-string/jumbo v2, "hits2"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzj;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->n()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->d:Lcom/google/android/gms/analytics/internal/zzal;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->n()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->e:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzj;->G()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzj$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzj$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzj;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzj;->c:Lcom/google/android/gms/analytics/internal/zzj$zza;

    return-void
.end method

.method private F()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->e()J

    move-result-wide v2

    add-int/lit8 v1, v0, -0x1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_2e

    int-to-long v0, v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->a(J)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "Store full, deleting hits to make room, count"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzj;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/util/List;)V

    :cond_2e
    return-void
.end method

.method private G()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->q()Lcom/google/android/gms/analytics/internal/zzr;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_13} :catch_23
    .catchall {:try_start_5 .. :try_end_13} :catchall_2b

    move-result-wide v2

    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-wide v2

    :cond_1a
    :try_start_1a
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v2, "Database returned empty set"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_23} :catch_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2b

    :catch_23
    move-exception v0

    :try_start_24
    const-string/jumbo v2, "Database error"

    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_31
    throw v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;J)J
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_13} :catch_20
    .catchall {:try_start_5 .. :try_end_13} :catchall_28

    move-result-wide p3

    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    :goto_19
    return-wide p3

    :cond_1a
    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_19

    :catch_20
    move-exception v0

    :try_start_21
    const-string/jumbo v2, "Database error"

    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    if-eqz v1, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2e
    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/zzj;)Lcom/google/android/gms/analytics/internal/zzal;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->e:Lcom/google/android/gms/analytics/internal/zzal;

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_10

    :cond_2c
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    const-string/jumbo v0, ""

    :cond_39
    return-object v0
.end method

.method private b(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->n()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/internal/zzj;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzj;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzab;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "ht"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "qt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "AppUID"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_14

    :cond_4b
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    const-string/jumbo v0, ""

    :cond_58
    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzj;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;)J
    .registers 10

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    const-string/jumbo v0, "SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_1b
    const-string/jumbo v1, "hits2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "hit_id"

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_42} :catch_62
    .catchall {:try_start_1b .. :try_end_42} :catchall_70

    move-result-object v1

    :try_start_43
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_49
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_58} :catch_7a
    .catchall {:try_start_43 .. :try_end_58} :catchall_77

    move-result v0

    if-nez v0, :cond_49

    :cond_5b
    if-eqz v1, :cond_60

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_60
    :goto_60
    move-object v0, v9

    goto :goto_11

    :catch_62
    move-exception v0

    move-object v1, v10

    :goto_64
    :try_start_64
    const-string/jumbo v2, "Error selecting hit ids"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzj;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_77

    if-eqz v1, :cond_60

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_60

    :catchall_70
    move-exception v0

    :goto_71
    if-eqz v10, :cond_76

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v0

    :catchall_77
    move-exception v0

    move-object v10, v1

    goto :goto_71

    :catch_7a
    move-exception v0

    goto :goto_64
.end method

.method a(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
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

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string/jumbo v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_16
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/zzn;->a(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_c

    :cond_23
    const-string/jumbo v0, "?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_35
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_3a} :catch_3b

    goto :goto_16

    :catch_3b
    move-exception v0

    const-string/jumbo v1, "Error parsing hit parameters"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_c
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method public a(JLjava/lang/String;)V
    .registers 11

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "properties"

    const-string/jumbo v2, "app_uid=? AND cid<>?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_30

    const-string/jumbo v1, "Deleted property records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/zzab;)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzj;->c(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->p()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Hit length exceeds the maximum allowed size"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzj;->F()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "hit_string"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hit_time"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "hit_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "hit_url"

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->b(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_58
    const-string/jumbo v0, "hits2"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_75

    const-string/jumbo v0, "Failed to insert a hit (got -1)"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->f(Ljava/lang/String;)V
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_6c} :catch_6d

    goto :goto_1f

    :catch_6d
    move-exception v0

    const-string/jumbo v1, "Error storing a hit"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_75
    :try_start_75
    const-string/jumbo v2, "Hit saved to database. db-id, hit"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_7f} :catch_6d

    goto :goto_1f
.end method

.method public a(Lcom/google/android/gms/analytics/internal/zzh;)V
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->f()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "app_uid"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "cid"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tid"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "adid"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->d()Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, 0x1

    :goto_46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "hits_count"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzh;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "params"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_61
    const-string/jumbo v0, "properties"

    const/4 v2, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_76

    const-string/jumbo v0, "Failed to insert/update a property (got -1)"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->f(Ljava/lang/String;)V
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_61 .. :try_end_76} :catch_79

    :cond_76
    :goto_76
    return-void

    :cond_77
    const/4 v0, 0x0

    goto :goto_46

    :catch_79
    move-exception v0

    const-string/jumbo v1, "Error storing a property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_76
.end method

.method public a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hit_id"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " in ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_50

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_41

    :cond_38
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Invalid hit id"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    if-lez v1, :cond_49

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    :cond_50
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_5a
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "Deleting dispatched hits. count"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "hits2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_f

    const-string/jumbo v2, "Deleted fewer hits then expected"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_8c} :catch_8d

    goto :goto_f

    :catch_8d
    move-exception v0

    const-string/jumbo v1, "Error deleting hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public b(J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/zzab;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_97

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->b(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_16
    const-string/jumbo v1, "hits2"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "hit_time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "hit_string"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "hit_url"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "hit_app_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "hit_id"

    aput-object v11, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_55} :catch_9a
    .catchall {:try_start_16 .. :try_end_55} :catchall_ab

    move-result-object v9

    :try_start_56
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_91

    :cond_61
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/zzao;->d(Ljava/lang/String;)Z

    move-result v5

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzab;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/analytics/internal/zzab;-><init>(Lcom/google/android/gms/analytics/internal/zzc;Ljava/util/Map;JZJI)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_8e} :catch_ad
    .catchall {:try_start_56 .. :try_end_8e} :catchall_ab

    move-result v0

    if-nez v0, :cond_61

    :cond_91
    if-eqz v9, :cond_96

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_96
    return-object v10

    :cond_97
    move v0, v1

    goto/16 :goto_9

    :catch_9a
    move-exception v0

    move-object v1, v9

    :goto_9c
    :try_start_9c
    const-string/jumbo v2, "Error loading hits from the database"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception v0

    move-object v9, v1

    :goto_a5
    if-eqz v9, :cond_aa

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_aa
    throw v0

    :catchall_ab
    move-exception v0

    goto :goto_a5

    :catch_ad
    move-exception v0

    move-object v1, v9

    goto :goto_9c
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public c(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "Deleting hit, id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/util/List;)V

    return-void
.end method

.method public close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->c:Lcom/google/android/gms/analytics/internal/zzj$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj$zza;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_e

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Sql error closing database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_e
    move-exception v0

    const-string/jumbo v1, "Error closing database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public d(J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/zzh;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v1, 0x5

    :try_start_c
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "cid"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "tid"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "adid"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "hits_count"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "params"

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->y()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v3, "app_uid=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string/jumbo v1, "properties"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_4e} :catch_c4
    .catchall {:try_start_c .. :try_end_4e} :catchall_c2

    move-result-object v9

    :try_start_4f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_93

    :cond_5a
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a5

    const/4 v5, 0x1

    :goto_6c
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a7

    :cond_87
    const-string/jumbo v0, "Read property with empty client id or tracker id"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gms/analytics/internal/zzj;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5a

    :cond_93
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v10, :cond_9f

    const-string/jumbo v0, "Sending hits to too many properties. Campaign report might be incorrect"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;)V
    :try_end_9f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_9f} :catch_b1
    .catchall {:try_start_4f .. :try_end_9f} :catchall_c2

    :cond_9f
    if-eqz v9, :cond_a4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a4
    return-object v11

    :cond_a5
    const/4 v5, 0x0

    goto :goto_6c

    :cond_a7
    :try_start_a7
    new-instance v0, Lcom/google/android/gms/analytics/internal/zzh;

    move-wide v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/analytics/internal/zzh;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a7 .. :try_end_b0} :catch_b1
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_c2

    goto :goto_8d

    :catch_b1
    move-exception v0

    move-object v1, v9

    :goto_b3
    :try_start_b3
    const-string/jumbo v2, "Error loading hits from the database"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    move-object v9, v1

    :goto_bc
    if-eqz v9, :cond_c1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c1
    throw v0

    :catchall_c2
    move-exception v0

    goto :goto_bc

    :catch_c4
    move-exception v0

    move-object v1, v9

    goto :goto_b3
.end method

.method public d()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public e()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    const-string/jumbo v0, "SELECT COUNT(*) FROM hits2"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method f()Z
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public g()I
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzj;->d:Lcom/google/android/gms/analytics/internal/zzal;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzal;->a(J)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_12
    return v0

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzj;->d:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzal;->a()V

    const-string/jumbo v1, "Deleting stale hits (if any)"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/internal/zzj;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->n()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->a()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    const-string/jumbo v4, "hits2"

    const-string/jumbo v5, "hit_time < ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "Deleted stale hits, count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method g(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
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

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string/jumbo v1, "?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "UTF-8"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/zzn;->a(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_c

    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_30} :catch_31

    goto :goto_1e

    :catch_31
    move-exception v0

    const-string/jumbo v1, "Error parsing property parameters"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_c
.end method

.method public h()J
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzj;->D()V

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzj;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzj;->a(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method i()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzj;->c:Lcom/google/android/gms/analytics/internal/zzj$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzj$zza;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Error opening database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzj;->d(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method
