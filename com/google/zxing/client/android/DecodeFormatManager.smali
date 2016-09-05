.class public final Lcom/google/zxing/client/android/DecodeFormatManager;
.super Ljava/lang/Object;
.source "DecodeFormatManager.java"


# static fields
.field static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 34
    const-string/jumbo v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->g:Ljava/util/regex/Pattern;

    .line 39
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->c:Ljava/util/Set;

    .line 40
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->f:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->d:Ljava/util/Set;

    .line 41
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->a:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->e:Ljava/util/Set;

    .line 42
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->k:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->f:Ljava/util/Set;

    .line 45
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->o:Lcom/google/zxing/BarcodeFormat;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->p:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->h:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->g:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->m:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->n:Lcom/google/zxing/BarcodeFormat;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->a:Ljava/util/Set;

    .line 51
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->c:Lcom/google/zxing/BarcodeFormat;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->d:Lcom/google/zxing/BarcodeFormat;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->e:Lcom/google/zxing/BarcodeFormat;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->i:Lcom/google/zxing/BarcodeFormat;

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->b:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->b:Ljava/util/Set;

    .line 56
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->h:Ljava/util/Set;

    .line 57
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->h:Ljava/util/Set;

    sget-object v1, Lcom/google/zxing/client/android/DecodeFormatManager;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->i:Ljava/util/Map;

    .line 64
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->i:Ljava/util/Map;

    const-string/jumbo v1, "ONE_D_MODE"

    sget-object v2, Lcom/google/zxing/client/android/DecodeFormatManager;->h:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->i:Ljava/util/Map;

    const-string/jumbo v1, "PRODUCT_MODE"

    sget-object v2, Lcom/google/zxing/client/android/DecodeFormatManager;->a:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->i:Ljava/util/Map;

    const-string/jumbo v1, "QR_CODE_MODE"

    sget-object v2, Lcom/google/zxing/client/android/DecodeFormatManager;->c:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->i:Ljava/util/Map;

    const-string/jumbo v1, "DATA_MATRIX_MODE"

    sget-object v2, Lcom/google/zxing/client/android/DecodeFormatManager;->d:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->i:Ljava/util/Map;

    const-string/jumbo v1, "AZTEC_MODE"

    sget-object v2, Lcom/google/zxing/client/android/DecodeFormatManager;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->i:Ljava/util/Map;

    const-string/jumbo v1, "PDF417_MODE"

    sget-object v2, Lcom/google/zxing/client/android/DecodeFormatManager;->f:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    const-string/jumbo v1, "SCAN_FORMATS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_14

    .line 79
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 81
    :cond_14
    const-string/jumbo v1, "SCAN_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/client/android/DecodeFormatManager;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p0, :cond_21

    .line 86
    const-class v0, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 88
    :try_start_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-static {v0}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_1f} :catch_20

    goto :goto_c

    .line 92
    :catch_20
    move-exception v0

    .line 96
    :cond_21
    if-eqz p1, :cond_2e

    .line 97
    sget-object v0, Lcom/google/zxing/client/android/DecodeFormatManager;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 99
    :goto_2b
    return-object v0

    :cond_2c
    move-object v0, v1

    .line 91
    goto :goto_2b

    .line 99
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2b
.end method
