.class public Lcom/rey/material/util/TypefaceUtil;
.super Ljava/lang/Object;
.source "TypefaceUtil.java"


# static fields
.field private static final PREFIX_ASSET:Ljava/lang/String; = "asset:"

.field private static final sCachedFonts:Ljava/util/HashMap;
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

    sput-object v0, Lcom/rey/material/util/TypefaceUtil;->sCachedFonts:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "style"    # I

    .prologue
    .line 24
    if-eqz p1, :cond_43

    const-string/jumbo v2, "asset:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 25
    sget-object v3, Lcom/rey/material/util/TypefaceUtil;->sCachedFonts:Ljava/util/HashMap;

    monitor-enter v3

    .line 27
    :try_start_e
    sget-object v2, Lcom/rey/material/util/TypefaceUtil;->sCachedFonts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v4, "asset:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 29
    .local v1, "typeface":Landroid/graphics/Typeface;
    sget-object v2, Lcom/rey/material/util/TypefaceUtil;->sCachedFonts:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_30
    .catchall {:try_start_e .. :try_end_2e} :catchall_35

    .line 30
    :try_start_2e
    monitor-exit v3

    .line 39
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :goto_2f
    return-object v1

    .line 32
    :catch_30
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    monitor-exit v3

    goto :goto_2f

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw v2

    .line 36
    :cond_38
    :try_start_38
    sget-object v2, Lcom/rey/material/util/TypefaceUtil;->sCachedFonts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_35

    move-object v1, v2

    goto :goto_2f

    .line 39
    :cond_43
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_2f
.end method
