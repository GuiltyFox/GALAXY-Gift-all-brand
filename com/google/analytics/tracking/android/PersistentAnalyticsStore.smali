.class Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    }
.end annotation


# static fields
.field static final BACKEND_LIBRARY_VERSION:Ljava/lang/String; = ""
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static final CREATE_HITS_TABLE:Ljava/lang/String;

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "google_analytics_v2.db"

.field static final HITS_TABLE:Ljava/lang/String; = "hits2"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_APP_ID:Ljava/lang/String; = "hit_app_id"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_ID:Ljava/lang/String; = "hit_id"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_STRING:Ljava/lang/String; = "hit_string"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_TIME:Ljava/lang/String; = "hit_time"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_URL:Ljava/lang/String; = "hit_url"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mClock:Lcom/google/analytics/tracking/android/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

.field private volatile mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

.field private mLastDeleteStaleHitsTime:J

.field private final mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 65
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hits2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 97
    const-string v0, "google_analytics_v2.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "databaseName"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 113
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    .line 119
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    .line 120
    new-instance v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->createDefaultHttpClientFactory()Lcom/google/analytics/tracking/android/HttpClientFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/HttpClientFactory;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Lcom/google/analytics/tracking/android/Clock;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private createDefaultHttpClientFactory()Lcom/google/analytics/tracking/android/HttpClientFactory;
    .registers 2

    .prologue
    .line 142
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$2;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$2;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)V

    return-object v0
.end method

.method private fillVersionParametersIfNecessary(Ljava/util/Map;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "commands":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/analytics/internal/Command;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/internal/Command;

    .line 207
    .local v1, "command":Lcom/google/android/gms/analytics/internal/Command;
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/Command;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appendVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/Command;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "clientVersion":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/Command;->getUrlParam()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->storeVersion(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v0    # "clientVersion":Ljava/lang/String;
    .end local v1    # "command":Lcom/google/android/gms/analytics/internal/Command;
    :cond_27
    return-void
.end method

.method public static generateHitString(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
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

    .prologue
    .line 288
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v2, "keyAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/HitBuilder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 292
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_48
    const-string v3, "&"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 533
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_6} :catch_9

    move-result-object v0

    move-object v2, v0

    .line 538
    :goto_8
    return-object v2

    .line 534
    :catch_9
    move-exception v1

    .line 535
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 536
    const/4 v2, 0x0

    goto :goto_8
.end method

.method private removeOldHitIfFull()V
    .registers 5

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v2

    add-int/lit16 v2, v2, -0x7d0

    add-int/lit8 v0, v2, 0x1

    .line 238
    .local v0, "hitsOverLimit":I
    if-lez v0, :cond_31

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHits(I)Ljava/util/List;

    move-result-object v1

    .line 240
    .local v1, "hitsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hits to make room"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0, v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits(Ljava/util/Collection;)V

    .line 243
    .end local v1    # "hitsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_31
    return-void
.end method

.method private storeVersion(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "versionUrlParam"    # Ljava/lang/String;
    .param p3, "clientVersion"    # Ljava/lang/String;
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

    .prologue
    .line 220
    .local p1, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p3

    .line 221
    .local v0, "version":Ljava/lang/String;
    if-nez p3, :cond_b

    .line 222
    const-string v0, ""

    .line 226
    :goto_5
    if-eqz p2, :cond_a

    .line 227
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_a
    return-void

    .line 224
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private writeHitToDatabase(Ljava/util/Map;JLjava/lang/String;)V
    .registers 12
    .param p2, "hitTimeInMilliseconds"    # J
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Error opening database for putHit"

    invoke-direct {p0, v5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 249
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_9

    .line 285
    :goto_8
    return-void

    .line 253
    :cond_9
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v2, "content":Landroid/content/ContentValues;
    const-string v5, "hit_string"

    invoke-static {p1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->generateHitString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v5, "hit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    const-wide/16 v0, 0x0

    .line 258
    .local v0, "appSystemId":J
    const-string v5, "AppUID"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 260
    :try_start_2a
    const-string v5, "AppUID"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_35} :catch_68

    move-result-wide v0

    .line 265
    :cond_36
    :goto_36
    const-string v5, "hit_app_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    if-nez p4, :cond_43

    .line 267
    const-string p4, "http://www.google-analytics.com/collect"

    .line 270
    :cond_43
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4f

    .line 273
    const-string v5, "empty path: not sending hit"

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_8

    .line 276
    :cond_4f
    const-string v5, "hit_url"

    invoke-virtual {v2, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :try_start_54
    const-string v5, "hits2"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 281
    iget-object v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_60} :catch_61

    goto :goto_8

    .line 282
    :catch_61
    move-exception v4

    .line 283
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "Error storing hit"

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_8

    .line 261
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_68
    move-exception v5

    goto :goto_36
.end method


# virtual methods
.method public clearHits(J)V
    .registers 10
    .param p1, "appId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    const-string v4, "Error opening database for clearHits"

    invoke-direct {p0, v4}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_21

    .line 166
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_22

    .line 167
    const-string v4, "hits2"

    invoke-virtual {v0, v4, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    :goto_16
    iget-object v4, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v5

    if-nez v5, :cond_36

    :goto_1e
    invoke-interface {v4, v2}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 175
    :cond_21
    return-void

    .line 169
    :cond_22
    new-array v1, v2, [Ljava/lang/String;

    .line 170
    .local v1, "params":[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 171
    const-string v4, "hits2"

    const-string v5, "hit_app_id = ?"

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_16

    .end local v1    # "params":[Ljava/lang/String;
    :cond_36
    move v2, v3

    .line 173
    goto :goto_1e
.end method

.method public close()V
    .registers 3

    .prologue
    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 516
    :goto_9
    return-void

    .line 512
    :catch_a
    move-exception v0

    .line 513
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "Error opening database for close"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_9
.end method

.method public deleteHits(Ljava/util/Collection;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "hits":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/analytics/tracking/android/Hit;>;"
    if-nez p1, :cond_a

    .line 431
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "hits cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 433
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 455
    :cond_10
    :goto_10
    return-void

    .line 436
    :cond_11
    const-string v8, "Error opening database for deleteHit"

    invoke-direct {p0, v8}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 437
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_10

    .line 440
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 441
    .local v6, "ids":[Ljava/lang/String;
    const-string v8, "HIT_ID in (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, ","

    array-length v12, v6

    const-string v13, "?"

    invoke-static {v12, v13}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "whereClause":Ljava/lang/String;
    const/4 v3, 0x0

    .line 444
    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    .line 445
    .local v2, "hit":Lcom/google/analytics/tracking/android/Hit;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_3d

    .line 448
    .end local v2    # "hit":Lcom/google/analytics/tracking/android/Hit;
    :cond_57
    :try_start_57
    const-string v8, "hits2"

    invoke-virtual {v0, v8, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    iget-object v9, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v8

    if-nez v8, :cond_81

    const/4 v8, 0x1

    :goto_65
    invoke-interface {v9, v8}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_68} :catch_69

    goto :goto_10

    .line 452
    :catch_69
    move-exception v1

    .line 453
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error deleting hit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_10

    .line 451
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_81
    const/4 v8, 0x0

    goto :goto_65
.end method

.method deleteStaleHits()I
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 408
    iget-object v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v8}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 410
    .local v3, "now":J
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-gtz v8, :cond_13

    .line 421
    :cond_12
    :goto_12
    return v7

    .line 413
    :cond_13
    iput-wide v3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    .line 414
    const-string v8, "Error opening database for deleteStaleHits"

    invoke-direct {p0, v8}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 415
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_12

    .line 418
    iget-object v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v8}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x9a7ec800L

    sub-long v1, v8, v10

    .line 419
    .local v1, "lastGoodTime":J
    const-string v8, "hits2"

    const-string v9, "HIT_TIME < ?"

    new-array v10, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v0, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 420
    .local v5, "rslt":I
    iget-object v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v9

    if-nez v9, :cond_47

    :goto_42
    invoke-interface {v8, v6}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    move v7, v5

    .line 421
    goto :goto_12

    :cond_47
    move v6, v7

    .line 420
    goto :goto_42
.end method

.method public dispatch()V
    .registers 5

    .prologue
    .line 481
    const-string v2, "dispatch running..."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->vDebug(Ljava/lang/String;)I

    .line 483
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Dispatcher;->okToDispatch()Z

    move-result v2

    if-nez v2, :cond_e

    .line 506
    :cond_d
    :goto_d
    return-void

    .line 487
    :cond_e
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    .line 488
    .local v0, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 489
    const-string v2, "...nothing to dispatch"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->vDebug(Ljava/lang/String;)I

    .line 490
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    goto :goto_d

    .line 493
    :cond_26
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/Dispatcher;->dispatchHits(Ljava/util/List;)I

    move-result v1

    .line 494
    .local v1, "hitsDispatched":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->vDebug(Ljava/lang/String;)I

    .line 499
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits(Ljava/util/Collection;)V

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v2

    if-lez v2, :cond_d

    .line 504
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatch()V

    goto :goto_d
.end method

.method public getDbHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object v0
.end method

.method getHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object v0
.end method

.method getNumStoredHits()I
    .registers 8

    .prologue
    .line 458
    const/4 v3, 0x0

    .line 459
    .local v3, "numStoredHits":I
    const-string v5, "Error opening database for requestNumHitsPending"

    invoke-direct {p0, v5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 460
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_b

    move v4, v3

    .line 476
    .end local v3    # "numStoredHits":I
    .local v4, "numStoredHits":I
    :goto_a
    return v4

    .line 463
    .end local v4    # "numStoredHits":I
    .restart local v3    # "numStoredHits":I
    :cond_b
    const/4 v0, 0x0

    .line 465
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_c
    const-string v5, "SELECT COUNT(*) from hits2"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 467
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_1d} :catch_26
    .catchall {:try_start_c .. :try_end_1d} :catchall_32

    move-result-wide v5

    long-to-int v3, v5

    .line 472
    :cond_1f
    if-eqz v0, :cond_24

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_24
    :goto_24
    move v4, v3

    .line 476
    .end local v3    # "numStoredHits":I
    .restart local v4    # "numStoredHits":I
    goto :goto_a

    .line 469
    .end local v4    # "numStoredHits":I
    .restart local v3    # "numStoredHits":I
    :catch_26
    move-exception v2

    .line 470
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_27
    const-string v5, "Error getting numStoredHits"

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_32

    .line 472
    if-eqz v0, :cond_24

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 472
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_32
    move-exception v5

    if-eqz v0, :cond_38

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v5
.end method

.method public peekHits(I)Ljava/util/List;
    .registers 24
    .param p1, "maxHits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const-string v3, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 305
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_10

    .line 306
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 394
    :cond_f
    :goto_f
    return-object v18

    .line 309
    :cond_10
    const/4 v13, 0x0

    .line 310
    .local v13, "cursor":Landroid/database/Cursor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v17, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :try_start_16
    const-string v2, "hits2"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "hit_time"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "hit_url"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC, %s ASC"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "hit_url"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "hit_id"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 327
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_4e} :catch_de
    .catchall {:try_start_16 .. :try_end_4e} :catchall_105

    .line 328
    .end local v17    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .local v18, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :try_start_4e
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 330
    :cond_54
    new-instance v2, Lcom/google/analytics/tracking/android/Hit;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/google/analytics/tracking/android/Hit;-><init>(Ljava/lang/String;JJ)V

    .line 331
    .local v2, "hit":Lcom/google/analytics/tracking/android/Hit;
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Hit;->setHitUrl(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_74} :catch_1a2
    .catchall {:try_start_4e .. :try_end_74} :catchall_19d

    move-result v3

    if-nez v3, :cond_54

    .line 339
    .end local v2    # "hit":Lcom/google/analytics/tracking/android/Hit;
    :cond_77
    if-eqz v13, :cond_7c

    .line 340
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_7c
    const/4 v12, 0x0

    .line 346
    .local v12, "count":I
    :try_start_7d
    const-string v4, "hits2"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "hit_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "hit_string"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v21, "hit_id"

    aput-object v21, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 354
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 356
    :cond_ad
    instance-of v3, v13, Landroid/database/sqlite/SQLiteCursor;

    if-eqz v3, :cond_17c

    .line 357
    move-object v0, v13

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v14

    .line 361
    .local v14, "cw":Landroid/database/CursorWindow;
    invoke-virtual {v14}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-lez v3, :cond_10c

    .line 362
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/Hit;->setHitString(Ljava/lang/String;)V

    .line 370
    .end local v14    # "cw":Landroid/database/CursorWindow;
    :goto_cf
    add-int/lit8 v12, v12, 0x1

    .line 371
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_d4} :catch_135
    .catchall {:try_start_7d .. :try_end_d4} :catchall_18e

    move-result v3

    if-nez v3, :cond_ad

    .line 393
    :cond_d7
    if-eqz v13, :cond_f

    .line 394
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    .line 335
    .end local v12    # "count":I
    .end local v18    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v17    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catch_de
    move-exception v15

    .line 336
    .local v15, "e":Landroid/database/sqlite/SQLiteException;
    :goto_df
    :try_start_df
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in peekHits fetching hitIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 337
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_fe
    .catchall {:try_start_df .. :try_end_fe} :catchall_105

    .line 339
    if-eqz v13, :cond_f

    .line 340
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    .line 339
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_105
    move-exception v3

    :goto_106
    if-eqz v13, :cond_10b

    .line 340
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_10b
    throw v3

    .line 364
    .end local v17    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v12    # "count":I
    .restart local v14    # "cw":Landroid/database/CursorWindow;
    .restart local v18    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_10c
    :try_start_10c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hitString for hitId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too large.  Hit will be deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I
    :try_end_134
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10c .. :try_end_134} :catch_135
    .catchall {:try_start_10c .. :try_end_134} :catchall_18e

    goto :goto_cf

    .line 374
    .end local v14    # "cw":Landroid/database/CursorWindow;
    :catch_135
    move-exception v15

    .line 375
    .restart local v15    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in peekHits fetching hitString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 379
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v20, "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    const/16 v16, 0x0

    .line 381
    .local v16, "foundOneBadHit":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_15b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_173

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Hit;

    .line 382
    .restart local v2    # "hit":Lcom/google/analytics/tracking/android/Hit;
    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_16e
    .catchall {:try_start_136 .. :try_end_16e} :catchall_18e

    move-result v3

    if-eqz v3, :cond_197

    .line 383
    if-eqz v16, :cond_195

    .line 393
    .end local v2    # "hit":Lcom/google/analytics/tracking/android/Hit;
    :cond_173
    if-eqz v13, :cond_178

    .line 394
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_178
    move-object/from16 v18, v20

    goto/16 :goto_f

    .line 368
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v16    # "foundOneBadHit":Z
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_17c
    :try_start_17c
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/Hit;->setHitString(Ljava/lang/String;)V
    :try_end_18c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17c .. :try_end_18c} :catch_135
    .catchall {:try_start_17c .. :try_end_18c} :catchall_18e

    goto/16 :goto_cf

    .line 393
    :catchall_18e
    move-exception v3

    if-eqz v13, :cond_194

    .line 394
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_194
    throw v3

    .line 386
    .restart local v2    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .restart local v15    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v16    # "foundOneBadHit":Z
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_195
    const/16 v16, 0x1

    .line 389
    :cond_197
    :try_start_197
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19c
    .catchall {:try_start_197 .. :try_end_19c} :catchall_18e

    goto :goto_15b

    .line 339
    .end local v2    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .end local v12    # "count":I
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v16    # "foundOneBadHit":Z
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catchall_19d
    move-exception v3

    move-object/from16 v17, v18

    .end local v18    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v17    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    goto/16 :goto_106

    .line 335
    .end local v17    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v18    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catch_1a2
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v17    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    goto/16 :goto_df
.end method

.method public putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .param p2, "hitTimeInMilliseconds"    # J
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "commands":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/analytics/internal/Command;>;"
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteStaleHits()I

    .line 194
    invoke-direct {p0, p1, p5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->fillVersionParametersIfNecessary(Ljava/util/Map;Ljava/util/Collection;)V

    .line 196
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->removeOldHitIfFull()V

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->writeHitToDatabase(Ljava/util/Map;JLjava/lang/String;)V

    .line 198
    return-void
.end method

.method public setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .registers 2
    .param p1, "clock"    # Lcom/google/analytics/tracking/android/Clock;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    .line 129
    return-void
.end method

.method public setDispatch(Z)V
    .registers 5
    .param p1, "dispatch"    # Z

    .prologue
    .line 152
    if-eqz p1, :cond_10

    new-instance v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->createDefaultHttpClientFactory()Lcom/google/analytics/tracking/android/HttpClientFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/HttpClientFactory;Landroid/content/Context;)V

    :goto_d
    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 155
    return-void

    .line 152
    :cond_10
    new-instance v0, Lcom/google/analytics/tracking/android/NoopDispatcher;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/NoopDispatcher;-><init>()V

    goto :goto_d
.end method

.method setDispatcher(Lcom/google/analytics/tracking/android/Dispatcher;)V
    .registers 2
    .param p1, "dispatcher"    # Lcom/google/analytics/tracking/android/Dispatcher;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 160
    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .registers 3
    .param p1, "timeInMilliseconds"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 401
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    .line 402
    return-void
.end method
