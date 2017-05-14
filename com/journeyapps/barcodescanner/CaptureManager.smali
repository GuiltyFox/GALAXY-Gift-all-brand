.class public Lcom/journeyapps/barcodescanner/CaptureManager;
.super Ljava/lang/Object;
.source "CaptureManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lcom/google/zxing/client/android/InactivityTimer;

.field private h:Lcom/google/zxing/client/android/BeepManager;

.field private i:Landroid/os/Handler;

.field private j:Lcom/journeyapps/barcodescanner/BarcodeCallback;

.field private final k:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/CaptureManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/CompoundBarcodeView;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->d:I

    .line 62
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->e:Z

    .line 64
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->f:Z

    .line 75
    new-instance v0, Lcom/journeyapps/barcodescanner/CaptureManager$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$1;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->j:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 96
    new-instance v0, Lcom/journeyapps/barcodescanner/CaptureManager$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$2;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->k:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 230
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->l:Z

    .line 119
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    .line 120
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    .line 121
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->c()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->k:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;)V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->i:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/google/zxing/client/android/InactivityTimer;

    new-instance v1, Lcom/journeyapps/barcodescanner/CaptureManager$3;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$3;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    invoke-direct {v0, p1, v1}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->g:Lcom/google/zxing/client/android/InactivityTimer;

    .line 133
    new-instance v0, Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->h:Lcom/google/zxing/client/android/BeepManager;

    .line 134
    return-void
.end method

.method public static a(Lcom/journeyapps/barcodescanner/BarcodeResult;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8

    .prologue
    .line 300
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.google.zxing.client.android.SCAN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    const/high16 v0, 0x80000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    const-string/jumbo v0, "SCAN_RESULT"

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v0, "SCAN_RESULT_FORMAT"

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->c()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->b()[B

    move-result-object v0

    .line 305
    if-eqz v0, :cond_34

    array-length v1, v0

    if-lez v1, :cond_34

    .line 306
    const-string/jumbo v1, "SCAN_RESULT_BYTES"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 308
    :cond_34
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->d()Ljava/util/Map;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_ac

    .line 310
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->h:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 311
    const-string/jumbo v0, "SCAN_RESULT_UPC_EAN_EXTENSION"

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->h:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :cond_52
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->b:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 315
    if-eqz v0, :cond_66

    .line 316
    const-string/jumbo v3, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    :cond_66
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->d:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    if-eqz v0, :cond_76

    .line 320
    const-string/jumbo v3, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    :cond_76
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->c:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 324
    if-eqz v0, :cond_ac

    .line 325
    const/4 v1, 0x0

    .line 326
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_85
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 328
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 329
    goto :goto_85

    .line 332
    :cond_ac
    if-eqz p1, :cond_b4

    .line 333
    const-string/jumbo v0, "SCAN_RESULT_IMAGE_PATH"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :cond_b4
    return-object v2
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/CaptureManager;)Lcom/journeyapps/barcodescanner/CompoundBarcodeView;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    return-object v0
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/CaptureManager;)Lcom/google/zxing/client/android/BeepManager;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->h:Lcom/google/zxing/client/android/BeepManager;

    return-object v0
.end method

.method private b(Lcom/journeyapps/barcodescanner/BarcodeResult;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->e:Z

    if-eqz v1, :cond_2c

    .line 348
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 350
    :try_start_9
    const-string/jumbo v2, "barcodeimage"

    const-string/jumbo v3, ".jpg"

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 351
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 352
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 353
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 354
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_2d

    move-result-object v0

    .line 359
    :cond_2c
    :goto_2c
    return-object v0

    .line 355
    :catch_2d
    move-exception v1

    .line 356
    sget-object v2, Lcom/journeyapps/barcodescanner/CaptureManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create temporary file and store bitmap! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/CaptureManager;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->i()V

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/journeyapps/barcodescanner/CaptureManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 234
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 236
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b()V

    .line 245
    :cond_11
    :goto_11
    return-void

    .line 237
    :cond_12
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->l:Z

    if-nez v0, :cond_11

    .line 238
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const v2, 0x15d59

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 241
    iput-boolean v4, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->l:Z

    goto :goto_11
.end method

.method private i()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 364
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 183
    iget v2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    .line 185
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 187
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 189
    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    .line 190
    if-eqz v2, :cond_28

    if-ne v2, v1, :cond_32

    .line 203
    :cond_28
    :goto_28
    iput v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->d:I

    .line 206
    :cond_2a
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->d:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 207
    return-void

    .line 193
    :cond_32
    const/16 v0, 0x8

    goto :goto_28

    .line 195
    :cond_35
    if-ne v3, v1, :cond_28

    .line 196
    if-eqz v2, :cond_3c

    const/4 v0, 0x3

    if-ne v2, v0, :cond_3e

    :cond_3c
    move v0, v1

    .line 197
    goto :goto_28

    .line 199
    :cond_3e
    const/16 v0, 0x9

    goto :goto_28
.end method

.method public a(I[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 254
    const v0, 0x15d59

    if-ne p1, v0, :cond_12

    .line 255
    array-length v0, p3

    if-lez v0, :cond_13

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_13

    .line 257
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b()V

    .line 263
    :cond_12
    :goto_12
    return-void

    .line 260
    :cond_13
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->f()V

    goto :goto_12
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 143
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 144
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 146
    if-eqz p2, :cond_19

    .line 150
    const-string/jumbo v0, "SAVED_ORIENTATION_LOCK"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->d:I

    .line 153
    :cond_19
    if-eqz p1, :cond_5b

    .line 154
    iget v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->d:I

    if-ne v0, v3, :cond_2b

    .line 156
    const-string/jumbo v0, "SCAN_ORIENTATION_LOCKED"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    if-eqz v0, :cond_2b

    .line 159
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->a()V

    .line 163
    :cond_2b
    const-string/jumbo v0, "com.google.zxing.client.android.SCAN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 164
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a(Landroid/content/Intent;)V

    .line 167
    :cond_3d
    const-string/jumbo v0, "BEEP_ENABLED"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_50

    .line 168
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->h:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v0, v4}, Lcom/google/zxing/client/android/BeepManager;->a(Z)V

    .line 169
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->h:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/BeepManager;->a()V

    .line 172
    :cond_50
    const-string/jumbo v0, "BARCODE_IMAGE_ENABLED"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 173
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->e:Z

    .line 176
    :cond_5b
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 288
    const-string/jumbo v0, "SAVED_ORIENTATION_LOCK"

    iget v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    return-void
.end method

.method protected a(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .registers 5

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->b(Lcom/journeyapps/barcodescanner/BarcodeResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->a(Lcom/journeyapps/barcodescanner/BarcodeResult;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 370
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->i()V

    .line 371
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->j:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 214
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    .line 221
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->h()V

    .line 225
    :goto_9
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->h()V

    .line 226
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->h:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/BeepManager;->a()V

    .line 227
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->g:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->b()V

    .line 228
    return-void

    .line 223
    :cond_17
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b()V

    goto :goto_9
.end method

.method public d()V
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->c:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a()V

    .line 272
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->g:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->c()V

    .line 273
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->h:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/BeepManager;->close()V

    .line 274
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->f:Z

    .line 281
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->g:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->c()V

    .line 282
    return-void
.end method

.method protected f()V
    .registers 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->f:Z

    if-eqz v0, :cond_d

    .line 393
    :cond_c
    :goto_c
    return-void

    .line 377
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    sget v2, Lcom/google/zxing/client/android/R$string;->zxing_app_name:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 379
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->b:Landroid/app/Activity;

    sget v2, Lcom/google/zxing/client/android/R$string;->zxing_msg_camera_framework_bug:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 380
    sget v1, Lcom/google/zxing/client/android/R$string;->zxing_button_ok:I

    new-instance v2, Lcom/journeyapps/barcodescanner/CaptureManager$4;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$4;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    new-instance v1, Lcom/journeyapps/barcodescanner/CaptureManager$5;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$5;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_c
.end method
