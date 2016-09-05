.class public final Luk/co/chrisjenx/calligraphy/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Typeface;",
            "Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-object v2, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a:Ljava/util/Map;

    monitor-enter v2

    .line 34
    :try_start_4
    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 35
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 36
    sget-object v3, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_17
    .catchall {:try_start_4 .. :try_end_15} :catchall_4c

    .line 37
    :try_start_15
    monitor-exit v2

    .line 44
    :goto_16
    return-object v0

    .line 39
    :catch_17
    move-exception v0

    .line 40
    const-string/jumbo v3, "Calligraphy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t create asset from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Make sure you have passed in the correct path and file name."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    monitor-exit v2

    move-object v0, v1

    goto :goto_16

    .line 44
    :cond_42
    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    monitor-exit v2

    goto :goto_16

    .line 45
    :catchall_4c
    move-exception v0

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_15 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public static a(Landroid/graphics/Typeface;)Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    .registers 4

    .prologue
    .line 55
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 62
    :goto_3
    return-object v0

    .line 56
    :cond_4
    sget-object v1, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->b:Ljava/util/Map;

    monitor-enter v1

    .line 57
    :try_start_7
    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 58
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 59
    sget-object v2, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v1

    goto :goto_3

    .line 63
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0

    .line 62
    :cond_1e
    :try_start_1e
    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_1b

    goto :goto_3
.end method

.method public static b(Landroid/graphics/Typeface;)Z
    .registers 2

    .prologue
    .line 73
    if-eqz p0, :cond_c

    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
