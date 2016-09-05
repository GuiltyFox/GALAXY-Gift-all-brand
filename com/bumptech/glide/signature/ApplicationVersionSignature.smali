.class public final Lcom/bumptech/glide/signature/ApplicationVersionSignature;
.super Ljava/lang/Object;
.source "ApplicationVersionSignature.java"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .registers 4

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 25
    sget-object v0, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Key;

    .line 26
    if-nez v0, :cond_1d

    .line 27
    invoke-static {p0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->b(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v1

    .line 28
    sget-object v0, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Key;

    .line 30
    if-nez v0, :cond_1d

    move-object v0, v1

    .line 35
    :cond_1d
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .registers 5

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_1c

    move-result-object v0

    .line 52
    :goto_e
    if-eqz v0, :cond_22

    .line 53
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_16
    new-instance v1, Lcom/bumptech/glide/signature/StringSignature;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 47
    :catch_1c
    move-exception v0

    .line 49
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_e

    .line 55
    :cond_22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method
