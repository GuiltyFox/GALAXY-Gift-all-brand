.class Lcom/koushikdutta/async/util/FileCache$CacheEntry;
.super Ljava/lang/Object;
.source "FileCache.java"


# instance fields
.field final a:J

.field final synthetic b:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/util/FileCache;Ljava/io/File;)V
    .registers 5

    .prologue
    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$CacheEntry;->b:Lcom/koushikdutta/async/util/FileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/koushikdutta/async/util/FileCache$CacheEntry;->a:J

    .line 26
    return-void
.end method
