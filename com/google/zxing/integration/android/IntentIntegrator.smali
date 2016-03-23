.class public Lcom/google/zxing/integration/android/IntentIntegrator;
.super Ljava/lang/Object;
.source "IntentIntegrator.java"


# static fields
.field public static final ALL_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_MATRIX_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAVE_LEGACY_SCANNER:Z

.field private static final HAVE_STANDARD_SCANNER:Z

.field private static final LEGACY_PACKAGE_NAME:Ljava/lang/String; = "com.google.zxing.client.androidlegacy"

.field public static final ONE_D_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCT_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final QR_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CODE:I = 0xc0de

.field private static final STANDARD_PACKAGE_NAME:Ljava/lang/String; = "com.google.zxing.client.android"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private desiredBarcodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Landroid/app/Fragment;

.field private final moreExtras:Ljava/util/Map;
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

.field private supportFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    const-class v2, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/integration/android/IntentIntegrator;->TAG:Ljava/lang/String;

    .line 100
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "UPC_A"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UPC_E"

    aput-object v3, v2, v5

    const-string/jumbo v3, "EAN_8"

    aput-object v3, v2, v6

    const-string/jumbo v3, "EAN_13"

    aput-object v3, v2, v7

    const-string/jumbo v3, "RSS_14"

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/integration/android/IntentIntegrator;->PRODUCT_CODE_TYPES:Ljava/util/Collection;

    .line 101
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "UPC_A"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UPC_E"

    aput-object v3, v2, v5

    const-string/jumbo v3, "EAN_8"

    aput-object v3, v2, v6

    const-string/jumbo v3, "EAN_13"

    aput-object v3, v2, v7

    const-string/jumbo v3, "CODE_39"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string/jumbo v4, "CODE_93"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "CODE_128"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "ITF"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "RSS_14"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "RSS_EXPANDED"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/integration/android/IntentIntegrator;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    .line 104
    const-string/jumbo v2, "QR_CODE"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/integration/android/IntentIntegrator;->QR_CODE_TYPES:Ljava/util/Collection;

    .line 105
    const-string/jumbo v2, "DATA_MATRIX"

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/integration/android/IntentIntegrator;->DATA_MATRIX_TYPES:Ljava/util/Collection;

    .line 107
    const/4 v2, 0x0

    sput-object v2, Lcom/google/zxing/integration/android/IntentIntegrator;->ALL_CODE_TYPES:Ljava/util/Collection;

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "test1":Z
    :try_start_88
    const-string/jumbo v2, "com.google.zxing.client.android.CaptureActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_88 .. :try_end_8e} :catch_9e

    .line 153
    const/4 v0, 0x1

    .line 157
    :goto_8f
    sput-boolean v0, Lcom/google/zxing/integration/android/IntentIntegrator;->HAVE_STANDARD_SCANNER:Z

    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, "test2":Z
    :try_start_92
    const-string/jumbo v2, "com.google.zxing.client.androidlegacy.CaptureActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_92 .. :try_end_98} :catch_9c

    .line 162
    const/4 v1, 0x1

    .line 166
    :goto_99
    sput-boolean v1, Lcom/google/zxing/integration/android/IntentIntegrator;->HAVE_LEGACY_SCANNER:Z

    .line 167
    return-void

    .line 163
    :catch_9c
    move-exception v2

    goto :goto_99

    .line 154
    .end local v1    # "test2":Z
    :catch_9e
    move-exception v2

    goto :goto_8f
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    .line 173
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    .line 174
    return-void
.end method

.method private attachMoreExtras(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 494
    iget-object v4, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 495
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 496
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 498
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2a

    .line 499
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 500
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2a
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_34

    .line 501
    check-cast v3, Ljava/lang/Long;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 502
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_34
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3e

    .line 503
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 504
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3e
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_48

    .line 505
    check-cast v3, Ljava/lang/Double;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 506
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_48
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_52

    .line 507
    check-cast v3, Ljava/lang/Float;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_a

    .line 508
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_52
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_5c

    .line 509
    check-cast v3, Landroid/os/Bundle;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_a

    .line 511
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5c
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    .line 514
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_64
    return-void
.end method

.method public static forFragment(Landroid/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 195
    .local v0, "integrator":Lcom/google/zxing/integration/android/IntentIntegrator;
    iput-object p0, v0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    .line 196
    return-object v0
.end method

.method public static forSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 182
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 183
    .local v0, "integrator":Lcom/google/zxing/integration/android/IntentIntegrator;
    iput-object p0, v0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroid/support/v4/app/Fragment;

    .line 184
    return-object v0
.end method

.method private static getScannerPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    sget-boolean v0, Lcom/google/zxing/integration/android/IntentIntegrator;->HAVE_STANDARD_SCANNER:Z

    if-eqz v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_e

    .line 141
    const-string/jumbo v0, "com.google.zxing.client.android"

    .line 145
    :goto_d
    return-object v0

    .line 142
    :cond_e
    sget-boolean v0, Lcom/google/zxing/integration/android/IntentIntegrator;->HAVE_LEGACY_SCANNER:Z

    if-eqz v0, :cond_16

    .line 143
    const-string/jumbo v0, "com.google.zxing.client.androidlegacy"

    goto :goto_d

    .line 145
    :cond_16
    const-string/jumbo v0, "com.google.zxing.client.android"

    goto :goto_d
.end method

.method private static varargs list([Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "values"    # [Ljava/lang/String;
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
    .line 490
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;
    .registers 11
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    .line 439
    const v0, 0xc0de

    if-ne p0, v0, :cond_41

    .line 440
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3b

    .line 441
    const-string/jumbo v0, "SCAN_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "contents":Ljava/lang/String;
    const-string/jumbo v0, "SCAN_RESULT_FORMAT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "formatName":Ljava/lang/String;
    const-string/jumbo v0, "SCAN_RESULT_BYTES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 444
    .local v3, "rawBytes":[B
    const-string/jumbo v0, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 445
    .local v6, "intentOrientation":I
    if-ne v6, v7, :cond_36

    .line 446
    .local v4, "orientation":Ljava/lang/Integer;
    :goto_29
    const-string/jumbo v0, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, "errorCorrectionLevel":Ljava/lang/String;
    new-instance v0, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;)V

    .line 455
    .end local v1    # "contents":Ljava/lang/String;
    .end local v2    # "formatName":Ljava/lang/String;
    .end local v3    # "rawBytes":[B
    .end local v4    # "orientation":Ljava/lang/Integer;
    .end local v5    # "errorCorrectionLevel":Ljava/lang/String;
    .end local v6    # "intentOrientation":I
    :goto_35
    return-object v0

    .line 445
    .restart local v1    # "contents":Ljava/lang/String;
    .restart local v2    # "formatName":Ljava/lang/String;
    .restart local v3    # "rawBytes":[B
    .restart local v6    # "intentOrientation":I
    :cond_36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_29

    .line 453
    .end local v1    # "contents":Ljava/lang/String;
    .end local v2    # "formatName":Ljava/lang/String;
    .end local v3    # "rawBytes":[B
    .end local v6    # "intentOrientation":I
    :cond_3b
    new-instance v0, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct {v0}, Lcom/google/zxing/integration/android/IntentResult;-><init>()V

    goto :goto_35

    :cond_41
    move-object v0, v4

    .line 455
    goto :goto_35
.end method

.method public static shouldBeWide(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "desiredBarcodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 295
    .local v2, "scan1d":Z
    const/4 v3, 0x0

    .line 296
    .local v3, "scan2d":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, "format":Ljava/lang/String;
    sget-object v4, Lcom/google/zxing/integration/android/IntentIntegrator;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 298
    const/4 v2, 0x1

    .line 300
    :cond_1b
    sget-object v4, Lcom/google/zxing/integration/android/IntentIntegrator;->QR_CODE_TYPES:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    sget-object v4, Lcom/google/zxing/integration/android/IntentIntegrator;->DATA_MATRIX_TYPES:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 301
    :cond_2b
    const/4 v3, 0x1

    goto :goto_6

    .line 305
    .end local v0    # "format":Ljava/lang/String;
    :cond_2d
    if-eqz v2, :cond_33

    if-nez v3, :cond_33

    const/4 v4, 0x1

    :goto_32
    return v4

    :cond_33
    const/4 v4, 0x0

    goto :goto_32
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object p0
.end method

.method public autoWide()Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->shouldBeWide(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 317
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setWide()V

    .line 319
    :cond_f
    return-object p0
.end method

.method public createScanIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 359
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->getCaptureActivity()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v2, "intentScan":Landroid/content/Intent;
    const-string/jumbo v4, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v4, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    if-eqz v4, :cond_45

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v3, "joinedByComma":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    .local v0, "format":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 368
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :cond_37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 372
    .end local v0    # "format":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v4, "SCAN_FORMATS"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "joinedByComma":Ljava/lang/StringBuilder;
    :cond_45
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    invoke-direct {p0, v2}, Lcom/google/zxing/integration/android/IntentIntegrator;->attachMoreExtras(Landroid/content/Intent;)V

    .line 378
    return-object v2
.end method

.method protected getCaptureActivity()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/zxing/integration/android/IntentIntegrator;->getScannerPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".CaptureActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v1

    return-object v1

    .line 126
    :catch_1d
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not find CaptureActivity. Make sure one of the zxing-android libraries are loaded."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getEncodeActivity()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/zxing/integration/android/IntentIntegrator;->getScannerPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".encode.EncodeActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v1

    return-object v1

    .line 134
    :catch_1d
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not find EncodeActivity. Make sure one of the zxing-android libraries are loaded."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMoreExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    return-object v0
.end method

.method public final initiateScan()V
    .registers 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->createScanIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0xc0de

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    return-void
.end method

.method public final initiateScan(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "desiredBarcodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setDesiredBarcodeFormats(Ljava/util/Collection;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 390
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    .line 391
    return-void
.end method

.method public setCameraId(I)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 4
    .param p1, "cameraId"    # I

    .prologue
    .line 329
    if-ltz p1, :cond_c

    .line 330
    const-string/jumbo v0, "SCAN_CAMERA_ID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 332
    :cond_c
    return-object p0
.end method

.method public final setCaptureLayout(I)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 4
    .param p1, "resourceId"    # I

    .prologue
    .line 214
    const-string/jumbo v0, "ZXING_CAPTURE_LAYOUT_ID_KEY"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 215
    return-object p0
.end method

.method public setDesiredBarcodeFormats(Ljava/util/Collection;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/zxing/integration/android/IntentIntegrator;"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "desiredBarcodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    .line 343
    return-object p0
.end method

.method public final setLegacyCaptureLayout(I)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 4
    .param p1, "resourceId"    # I

    .prologue
    .line 224
    const-string/jumbo v0, "ZXINGLEGACY_CAPTURE_LAYOUT_ID_KEY"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 225
    return-object p0
.end method

.method public final setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 3
    .param p1, "prompt"    # Ljava/lang/String;

    .prologue
    .line 234
    if-eqz p1, :cond_8

    .line 235
    const-string/jumbo v0, "PROMPT_MESSAGE"

    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 237
    :cond_8
    return-object p0
.end method

.method public final setResultDisplayDuration(J)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 6
    .param p1, "ms"    # J

    .prologue
    .line 246
    const-string/jumbo v0, "RESULT_DISPLAY_DURATION_MS"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 247
    return-object p0
.end method

.method public final setScanningRectangle(II)Lcom/google/zxing/integration/android/IntentIntegrator;
    .registers 5
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 257
    const-string/jumbo v0, "SCAN_WIDTH"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 258
    const-string/jumbo v0, "SCAN_HEIGHT"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 259
    return-object p0
.end method

.method public setWide()V
    .registers 10

    .prologue
    .line 268
    iget-object v7, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 269
    .local v6, "window":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 270
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 271
    .local v4, "displayWidth":I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 272
    .local v3, "displayHeight":I
    if-le v3, v4, :cond_17

    .line 274
    move v5, v4

    .line 276
    .local v5, "temp":I
    move v4, v3

    .line 277
    move v3, v5

    .line 280
    .end local v5    # "temp":I
    :cond_17
    mul-int/lit8 v7, v4, 0x9

    div-int/lit8 v1, v7, 0xa

    .line 281
    .local v1, "desiredWidth":I
    mul-int/lit8 v7, v3, 0x3

    div-int/lit8 v7, v7, 0x4

    const/16 v8, 0x190

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 282
    .local v0, "desiredHeight":I
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setScanningRectangle(II)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 283
    return-void
.end method

.method public final shareText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 466
    const-string/jumbo v0, "TEXT_TYPE"

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->shareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 467
    return-void
.end method

.method public final shareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/CharSequence;

    .prologue
    .line 477
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->getEncodeActivity()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string/jumbo v1, "ENCODE_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 481
    const-string/jumbo v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 483
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 485
    invoke-direct {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->attachMoreExtras(Landroid/content/Intent;)V

    .line 486
    invoke-virtual {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->startActivity(Landroid/content/Intent;)V

    .line 487
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_10

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 418
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 425
    :cond_f
    :goto_f
    return-void

    .line 420
    :cond_10
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1a

    .line 421
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    .line 423
    :cond_1a
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method protected startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_10

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 405
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 412
    :cond_f
    :goto_f
    return-void

    .line 407
    :cond_10
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1a

    .line 408
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    .line 410
    :cond_1a
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f
.end method
