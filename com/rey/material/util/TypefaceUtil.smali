.class public Lcom/rey/material/util/TypefaceUtil;
.super Ljava/lang/Object;
.source "TypefaceUtil.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rey/material/util/TypefaceUtil;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    .prologue
    .line 24
    if-eqz p1, :cond_42

    const-string/jumbo v0, "asset:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 25
    sget-object v1, Lcom/rey/material/util/TypefaceUtil;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 27
    :try_start_e
    sget-object v0, Lcom/rey/material/util/TypefaceUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, "asset:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 29
    sget-object v2, Lcom/rey/material/util/TypefaceUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_30
    .catchall {:try_start_e .. :try_end_2e} :catchall_35

    .line 30
    :try_start_2e
    monitor-exit v1

    .line 39
    :goto_2f
    return-object v0

    .line 32
    :catch_30
    move-exception v0

    .line 33
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    monitor-exit v1

    goto :goto_2f

    .line 37
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw v0

    .line 36
    :cond_38
    :try_start_38
    sget-object v0, Lcom/rey/material/util/TypefaceUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_35

    goto :goto_2f

    .line 39
    :cond_42
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2f
.end method
