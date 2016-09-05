.class public Lcom/vincentbrison/openlibraries/android/dualcache/lib/StringLRUCache;
.super Landroid/support/v4/util/LruCache;
.source "StringLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 40
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected synthetic b(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/StringLRUCache;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
