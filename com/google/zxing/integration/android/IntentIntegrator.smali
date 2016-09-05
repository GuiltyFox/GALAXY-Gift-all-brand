.class public Lcom/google/zxing/integration/android/IntentIntegrator;
.super Ljava/lang/Object;
.source "IntentIntegrator.java"


# static fields
.field public static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/String;


# instance fields
.field private final g:Landroid/app/Activity;

.field private h:Landroid/app/Fragment;

.field private i:Landroid/support/v4/app/Fragment;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    const-class v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->f:Ljava/lang/String;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UPC_A"

    aput-object v1, v0, v2

    const-string/jumbo v1, "UPC_E"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EAN_8"

    aput-object v1, v0, v4

    const-string/jumbo v1, "EAN_13"

    aput-object v1, v0, v5

    const-string/jumbo v1, "RSS_14"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->a:Ljava/util/Collection;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UPC_A"

    aput-object v1, v0, v2

    const-string/jumbo v1, "UPC_E"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EAN_8"

    aput-object v1, v0, v4

    const-string/jumbo v1, "EAN_13"

    aput-object v1, v0, v5

    const-string/jumbo v1, "CODE_39"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "CODE_93"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "CODE_128"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ITF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "RSS_14"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "RSS_EXPANDED"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->b:Ljava/util/Collection;

    .line 57
    const-string/jumbo v0, "QR_CODE"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->c:Ljava/util/Collection;

    .line 58
    const-string/jumbo v0, "DATA_MATRIX"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->d:Ljava/util/Collection;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->e:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->j:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->g:Landroid/app/Activity;

    .line 80
    return-void
.end method

.method public static a(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    .line 293
    const v0, 0xc0de

    if-ne p0, v0, :cond_48

    .line 294
    const/4 v0, -0x1

    if-ne p1, v0, :cond_42

    .line 295
    const-string/jumbo v0, "SCAN_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    const-string/jumbo v0, "SCAN_RESULT_FORMAT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string/jumbo v0, "SCAN_RESULT_BYTES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 298
    const-string/jumbo v0, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 299
    if-ne v0, v5, :cond_3d

    .line 300
    :goto_29
    const-string/jumbo v0, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    const-string/jumbo v0, "SCAN_RESULT_IMAGE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 302
    new-instance v0, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_3c
    return-object v0

    .line 299
    :cond_3d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_29

    .line 309
    :cond_42
    new-instance v0, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct {v0}, Lcom/google/zxing/integration/android/IntentResult;-><init>()V

    goto :goto_3c

    :cond_48
    move-object v0, v4

    .line 311
    goto :goto_3c
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 320
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 323
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_2a

    .line 324
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 325
    :cond_2a
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_34

    .line 326
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 327
    :cond_34
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3e

    .line 328
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 329
    :cond_3e
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_48

    .line 330
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 331
    :cond_48
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_52

    .line 332
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 333
    :cond_52
    instance-of v3, v0, Landroid/os/Bundle;

    if-eqz v3, :cond_5c

    .line 334
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_a

    .line 336
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    .line 339
    :cond_64
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/zxing/integration/android/IntentIntegrator;"
        }
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->l:Ljava/lang/Class;

    .line 97
    return-object p0
.end method

.method protected a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    const-class v0, Lcom/journeyapps/barcodescanner/CaptureActivity;

    return-object v0
.end method

.method protected a(Landroid/content/Intent;I)V
    .registers 5

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->h:Landroid/app/Fragment;

    if-eqz v0, :cond_10

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 259
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->h:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 266
    :cond_f
    :goto_f
    return-void

    .line 261
    :cond_10
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->i:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1a

    .line 262
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->i:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    .line 264
    :cond_1a
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->g:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f
.end method

.method public b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->l:Ljava/lang/Class;

    if-nez v0, :cond_a

    .line 84
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->a()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->l:Ljava/lang/Class;

    .line 86
    :cond_a
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->d()Landroid/content/Intent;

    move-result-object v0

    const v1, 0xc0de

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->a(Landroid/content/Intent;I)V

    .line 205
    return-void
.end method

.method public d()Landroid/content/Intent;
    .registers 6

    .prologue
    .line 213
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->g:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    const-string/jumbo v0, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->k:Ljava/util/Collection;

    if-eqz v0, :cond_45

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 222
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 226
    :cond_3b
    const-string/jumbo v0, "SCAN_FORMATS"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :cond_45
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    invoke-direct {p0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->a(Landroid/content/Intent;)V

    .line 232
    return-object v1
.end method
