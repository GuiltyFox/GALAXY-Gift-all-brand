.class public final Lcom/google/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$client$android$IntentSource:[I = null

.field private static final BULK_MODE_SCAN_DELAY_MS:J = 0x3e8L

.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field private static final DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HISTORY_REQUEST_CODE:I = 0xbacc

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.zxing.client.android"

.field private static final PRODUCT_SEARCH_URL_PREFIX:Ljava/lang/String; = "http://www.google"

.field private static final PRODUCT_SEARCH_URL_SUFFIX:Ljava/lang/String; = "/m/products/scan"

.field private static final TAG:Ljava/lang/String;

.field private static final ZXING_URLS:[Ljava/lang/String;


# instance fields
.field private ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

.field private inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

.field private lastResult:Lcom/google/zxing/Result;

.field private resultView:Landroid/view/View;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

.field private source:Lcom/google/zxing/client/android/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private statusView:Landroid/widget/TextView;

.field private viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$client$android$IntentSource()[I
    .registers 3

    .prologue
    .line 80
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->$SWITCH_TABLE$com$google$zxing$client$android$IntentSource:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/zxing/client/android/IntentSource;->values()[Lcom/google/zxing/client/android/IntentSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->$SWITCH_TABLE$com$google$zxing$client$android$IntentSource:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 82
    const-class v0, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://zxing.appspot.com/scan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "zxing://scan/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 378
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v1, :cond_7

    .line 379
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 390
    :goto_6
    return-void

    .line 381
    :cond_7
    if-eqz p2, :cond_b

    .line 382
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 384
    :cond_b
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz v1, :cond_1e

    .line 385
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    sget v2, Lcom/google/zxing/client/android/R$id;->decode_succeeded:I

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 386
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    .end local v0    # "message":Landroid/os/Message;
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_6
.end method

.method private displayFrameworkBugMessageAndExit()V
    .registers 4

    .prologue
    .line 735
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 736
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/google/zxing/client/android/R$string;->app_name:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 737
    sget v1, Lcom/google/zxing/client/android/R$string;->msg_camera_framework_bug:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 738
    sget v1, Lcom/google/zxing/client/android/R$string;->button_ok:I

    new-instance v2, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    new-instance v1, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 740
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 741
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)V
    .registers 11
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;
    .param p4, "scaleFactor"    # F

    .prologue
    .line 495
    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    .line 496
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    mul-float v1, p4, v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    mul-float v2, p4, v0

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    mul-float v3, p4, v0

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    mul-float v4, p4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 498
    :cond_21
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;FLcom/google/zxing/Result;)V
    .registers 13
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 473
    invoke-virtual {p3}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 474
    .local v3, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v3, :cond_32

    array-length v5, v3

    if-lez v5, :cond_32

    .line 475
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 476
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 477
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/zxing/client/android/R$color;->result_points:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    array-length v5, v3

    if-ne v5, v8, :cond_33

    .line 479
    const/high16 v5, 0x40800000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 480
    aget-object v4, v3, v4

    aget-object v5, v3, v7

    invoke-static {v0, v1, v4, v5, p2}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)V

    .line 492
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_32
    :goto_32
    return-void

    .line 481
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :cond_33
    array-length v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_57

    invoke-virtual {p3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v5, v6, :cond_47

    invoke-virtual {p3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, v6, :cond_57

    .line 483
    :cond_47
    aget-object v4, v3, v4

    aget-object v5, v3, v7

    invoke-static {v0, v1, v4, v5, p2}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)V

    .line 484
    aget-object v4, v3, v8

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v0, v1, v4, v5, p2}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)V

    goto :goto_32

    .line 486
    :cond_57
    const/high16 v5, 0x41200000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 487
    array-length v5, v3

    :goto_5d
    if-ge v4, v5, :cond_32

    aget-object v2, v3, v4

    .line 488
    .local v2, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    mul-float/2addr v7, p2

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .registers 30
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/ResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 588
    if-eqz p3, :cond_f

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    if-nez v22, :cond_16f

    .line 594
    const-wide/16 v20, 0x5dc

    .line 599
    .local v20, "resultDurationMS":J
    :goto_17
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_7e

    .line 600
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 601
    .local v17, "rawResultString":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4e

    .line 602
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x0

    const/16 v24, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " ..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 604
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayTitle()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    .end local v17    # "rawResultString":Ljava/lang/String;
    :cond_7e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v22

    if-nez v22, :cond_a3

    .line 608
    const-string v22, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/ClipboardManager;

    .line 609
    .local v8, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v19

    .line 610
    .local v19, "text":Ljava/lang/CharSequence;
    if-eqz v19, :cond_a3

    .line 612
    :try_start_9e
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_a3
    .catch Ljava/lang/NullPointerException; {:try_start_9e .. :try_end_a3} :catch_17d

    .line 620
    .end local v8    # "clipboard":Landroid/text/ClipboardManager;
    .end local v19    # "text":Ljava/lang/CharSequence;
    :cond_a3
    :goto_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1aa

    .line 624
    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v22, 0x80000

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 626
    const-string v22, "SCAN_RESULT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v22, "SCAN_RESULT_FORMAT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v16

    .line 629
    .local v16, "rawBytes":[B
    if-eqz v16, :cond_fb

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_fb

    .line 630
    const-string v22, "SCAN_RESULT_BYTES"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 632
    :cond_fb
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v13

    .line 633
    .local v13, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    if-eqz v13, :cond_163

    .line 634
    sget-object v22, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_120

    .line 635
    const-string v22, "SCAN_RESULT_UPC_EAN_EXTENSION"

    sget-object v23, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    :cond_120
    sget-object v22, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 638
    .local v15, "orientation":Ljava/lang/Integer;
    if-eqz v15, :cond_139

    .line 639
    const-string v22, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    :cond_139
    sget-object v22, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 642
    .local v9, "ecLevel":Ljava/lang/String;
    if-eqz v9, :cond_14c

    .line 643
    const-string v22, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    :cond_14c
    sget-object v22, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 646
    .local v7, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz v7, :cond_163

    .line 647
    const/4 v11, 0x0

    .line 648
    .local v11, "i":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_15d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_18b

    .line 654
    .end local v7    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v9    # "ecLevel":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v15    # "orientation":Ljava/lang/Integer;
    :cond_163
    sget v22, Lcom/google/zxing/client/android/R$id;->return_scan_result:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    .line 672
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v16    # "rawBytes":[B
    :cond_16e
    :goto_16e
    return-void

    .line 596
    .end local v20    # "resultDurationMS":J
    :cond_16f
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "RESULT_DISPLAY_DURATION_MS"

    const-wide/16 v24, 0x5dc

    invoke-virtual/range {v22 .. v25}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .restart local v20    # "resultDurationMS":J
    goto/16 :goto_17

    .line 613
    .restart local v8    # "clipboard":Landroid/text/ClipboardManager;
    .restart local v19    # "text":Ljava/lang/CharSequence;
    :catch_17d
    move-exception v14

    .line 615
    .local v14, "npe":Ljava/lang/NullPointerException;
    sget-object v22, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v23, "Clipboard bug"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a3

    .line 648
    .end local v8    # "clipboard":Landroid/text/ClipboardManager;
    .end local v14    # "npe":Ljava/lang/NullPointerException;
    .end local v19    # "text":Ljava/lang/CharSequence;
    .restart local v7    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .restart local v9    # "ecLevel":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .restart local v15    # "orientation":Ljava/lang/Integer;
    .restart local v16    # "rawBytes":[B
    :cond_18b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 649
    .local v6, "byteSegment":[B
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 650
    add-int/lit8 v11, v11, 0x1

    goto :goto_15d

    .line 656
    .end local v6    # "byteSegment":[B
    .end local v7    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v9    # "ecLevel":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v15    # "orientation":Ljava/lang/Integer;
    .end local v16    # "rawBytes":[B
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_204

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "/scan"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 661
    .local v10, "end":I
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "?q="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&source=zxing"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 662
    .local v18, "replyURL":Ljava/lang/String;
    sget v22, Lcom/google/zxing/client/android/R$id;->launch_product_query:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v18

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    goto/16 :goto_16e

    .line 664
    .end local v10    # "end":I
    .end local v18    # "replyURL":Ljava/lang/String;
    :cond_204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_16e

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->isScanFromWebPage()Z

    move-result v22

    if-eqz v22, :cond_16e

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->buildReplyURL(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;)Ljava/lang/String;

    move-result-object v18

    .line 668
    .restart local v18    # "replyURL":Ljava/lang/String;
    sget v22, Lcom/google/zxing/client/android/R$id;->launch_product_query:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v18

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    goto/16 :goto_16e
.end method

.method private handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .registers 32
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/ResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 506
    sget v25, Lcom/google/zxing/client/android/R$id;->barcode_image_view:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 507
    .local v4, "barcodeImageView":Landroid/widget/ImageView;
    if-nez p3, :cond_1b4

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    sget v26, Lcom/google/zxing/client/android/R$drawable;->launcher_icon:I

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 513
    :goto_3e
    sget v25, Lcom/google/zxing/client/android/R$id;->format_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 514
    .local v12, "formatTextView":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    sget v25, Lcom/google/zxing/client/android/R$id;->type_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 517
    .local v23, "typeTextView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    const/16 v25, 0x3

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v14

    .line 520
    .local v14, "formatter":Ljava/text/DateFormat;
    new-instance v25, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v26

    invoke-direct/range {v25 .. v27}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 521
    .local v13, "formattedTime":Ljava/lang/String;
    sget v25, Lcom/google/zxing/client/android/R$id;->time_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 522
    .local v22, "timeTextView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    sget v25, Lcom/google/zxing/client/android/R$id;->meta_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 525
    .local v15, "metaTextView":Landroid/widget/TextView;
    sget v25, Lcom/google/zxing/client/android/R$id;->meta_text_view_label:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 526
    .local v16, "metaTextViewLabel":Landroid/view/View;
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    const/16 v25, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v17

    .line 529
    .local v17, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    if-eqz v17, :cond_107

    .line 530
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v25, 0x14

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 531
    .local v18, "metadataText":Ljava/lang/StringBuilder;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_d9
    :goto_d9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_1bb

    .line 536
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_107

    .line 537
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 538
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .end local v18    # "metadataText":Ljava/lang/StringBuilder;
    :cond_107
    sget v25, Lcom/google/zxing/client/android/R$id;->contents_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 545
    .local v9, "contentsTextView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v10

    .line 546
    .local v10, "displayContents":Ljava/lang/CharSequence;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    const/16 v25, 0x16

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v26

    div-int/lit8 v26, v26, 0x4

    rsub-int/lit8 v26, v26, 0x20

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 549
    .local v20, "scaledSize":I
    const/16 v25, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 551
    sget v25, Lcom/google/zxing/client/android/R$id;->contents_supplement_text_view:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 552
    .local v21, "supplementTextView":Landroid/widget/TextView;
    const-string v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    const-string v26, "preferences_supplemental"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_177

    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->maybeInvokeRetrieval(Landroid/widget/TextView;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    .line 558
    :cond_177
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getButtonCount()I

    move-result v6

    .line 559
    .local v6, "buttonCount":I
    sget v25, Lcom/google/zxing/client/android/R$id;->result_button_view:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 560
    .local v7, "buttonView":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 561
    const/16 v24, 0x0

    .local v24, "x":I
    :goto_18c
    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1e0

    .line 572
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v25

    if-nez v25, :cond_1b3

    .line 573
    const-string v25, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/ClipboardManager;

    .line 574
    .local v8, "clipboard":Landroid/text/ClipboardManager;
    if-eqz v10, :cond_1b3

    .line 576
    :try_start_1b0
    invoke-virtual {v8, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_1b3
    .catch Ljava/lang/NullPointerException; {:try_start_1b0 .. :try_end_1b3} :catch_21c

    .line 583
    .end local v8    # "clipboard":Landroid/text/ClipboardManager;
    :cond_1b3
    :goto_1b3
    return-void

    .line 510
    .end local v6    # "buttonCount":I
    .end local v7    # "buttonView":Landroid/view/ViewGroup;
    .end local v9    # "contentsTextView":Landroid/widget/TextView;
    .end local v10    # "displayContents":Ljava/lang/CharSequence;
    .end local v12    # "formatTextView":Landroid/widget/TextView;
    .end local v13    # "formattedTime":Ljava/lang/String;
    .end local v14    # "formatter":Ljava/text/DateFormat;
    .end local v15    # "metaTextView":Landroid/widget/TextView;
    .end local v16    # "metaTextViewLabel":Landroid/view/View;
    .end local v17    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v20    # "scaledSize":I
    .end local v21    # "supplementTextView":Landroid/widget/TextView;
    .end local v22    # "timeTextView":Landroid/widget/TextView;
    .end local v23    # "typeTextView":Landroid/widget/TextView;
    .end local v24    # "x":I
    :cond_1b4
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3e

    .line 531
    .restart local v12    # "formatTextView":Landroid/widget/TextView;
    .restart local v13    # "formattedTime":Ljava/lang/String;
    .restart local v14    # "formatter":Ljava/text/DateFormat;
    .restart local v15    # "metaTextView":Landroid/widget/TextView;
    .restart local v16    # "metaTextViewLabel":Landroid/view/View;
    .restart local v17    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .restart local v18    # "metadataText":Ljava/lang/StringBuilder;
    .restart local v22    # "timeTextView":Landroid/widget/TextView;
    .restart local v23    # "typeTextView":Landroid/widget/TextView;
    :cond_1bb
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 532
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    sget-object v26, Lcom/google/zxing/client/android/CaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d9

    .line 533
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d9

    .line 562
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v18    # "metadataText":Ljava/lang/StringBuilder;
    .restart local v6    # "buttonCount":I
    .restart local v7    # "buttonView":Landroid/view/ViewGroup;
    .restart local v9    # "contentsTextView":Landroid/widget/TextView;
    .restart local v10    # "displayContents":Ljava/lang/CharSequence;
    .restart local v20    # "scaledSize":I
    .restart local v21    # "supplementTextView":Landroid/widget/TextView;
    .restart local v24    # "x":I
    :cond_1e0
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 563
    .local v5, "button":Landroid/widget/TextView;
    move/from16 v0, v24

    if-ge v0, v6, :cond_214

    .line 564
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->getButtonText(I)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 566
    new-instance v25, Lcom/google/zxing/client/android/result/ResultButtonListener;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/result/ResultButtonListener;-><init>(Lcom/google/zxing/client/android/result/ResultHandler;I)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    :goto_210
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_18c

    .line 568
    :cond_214
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_210

    .line 577
    .end local v5    # "button":Landroid/widget/TextView;
    .restart local v8    # "clipboard":Landroid/text/ClipboardManager;
    :catch_21c
    move-exception v19

    .line 579
    .local v19, "npe":Ljava/lang/NullPointerException;
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v26, "Clipboard bug"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b3
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .registers 10
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 709
    if-nez p1, :cond_a

    .line 710
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_a
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 713
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_19
    return-void

    .line 717
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 719
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v0, :cond_33

    .line 720
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeHints:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 722
    :cond_33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_38} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_38} :catch_43

    goto :goto_19

    .line 723
    :catch_39
    move-exception v7

    .line 724
    .local v7, "ioe":Ljava/io/IOException;
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_19

    .line 726
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_43
    move-exception v6

    .line 729
    .local v6, "e":Ljava/lang/RuntimeException;
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_19
.end method

.method private static isZXingURL(Ljava/lang/String;)Z
    .registers 7
    .param p0, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 247
    if-nez p0, :cond_4

    .line 255
    :cond_3
    :goto_3
    return v1

    .line 250
    :cond_4
    sget-object v3, Lcom/google/zxing/client/android/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 251
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 252
    const/4 v1, 0x1

    goto :goto_3

    .line 250
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private resetStatusView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 751
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    sget v1, Lcom/google/zxing/client/android/R$string;->msg_default_status:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 753
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, v2}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 755
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 756
    return-void
.end method

.method private sendReplyMessage(ILjava/lang/Object;J)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "delayMS"    # J

    .prologue
    .line 675
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 676
    .local v0, "message":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_12

    .line 677
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 681
    :goto_11
    return-void

    .line 679
    :cond_12
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method

.method private showHelpOnFirstLaunch()Z
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 688
    :try_start_1
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.google.zxing.client.android"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 689
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 690
    .local v0, "currentVersion":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 691
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "preferences_help_version_shown"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 692
    .local v4, "lastVersion":I
    if-le v0, v4, :cond_41

    .line 693
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "preferences_help_version_shown"

    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 694
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/google/zxing/client/android/HelpActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x80000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 697
    if-nez v4, :cond_42

    const-string v5, "index.html"

    .line 698
    .local v5, "page":Ljava/lang/String;
    :goto_38
    const-string v8, "requested_page_key"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 700
    const/4 v7, 0x1

    .line 705
    .end local v0    # "currentVersion":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lastVersion":I
    .end local v5    # "page":Ljava/lang/String;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_41
    :goto_41
    return v7

    .line 697
    .restart local v0    # "currentVersion":I
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "lastVersion":I
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_42
    const-string v5, "whatsnew.html"
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_44} :catch_45

    goto :goto_38

    .line 702
    .end local v0    # "currentVersion":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lastVersion":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :catch_45
    move-exception v1

    .line 703
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method


# virtual methods
.method public drawViewfinder()V
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 760
    return-void
.end method

.method getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .registers 12
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;
    .param p3, "scaleFactor"    # F

    .prologue
    const/4 v4, 0x0

    .line 424
    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 425
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 426
    invoke-static {p0, p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->makeResultHandler(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;

    move-result-object v3

    .line 428
    .local v3, "resultHandler":Lcom/google/zxing/client/android/result/ResultHandler;
    if-eqz p2, :cond_2e

    const/4 v0, 0x1

    .line 429
    .local v0, "fromLiveScan":Z
    :goto_f
    if-eqz v0, :cond_1e

    .line 430
    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v5, p1, v3}, Lcom/google/zxing/client/android/history/HistoryManager;->addHistoryItem(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;)V

    .line 432
    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 433
    invoke-direct {p0, p2, p3, p1}, Lcom/google/zxing/client/android/CaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;FLcom/google/zxing/Result;)V

    .line 436
    :cond_1e
    invoke-static {}, Lcom/google/zxing/client/android/CaptureActivity;->$SWITCH_TABLE$com$google$zxing$client$android$IntentSource()[I

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_96

    .line 460
    :goto_2d
    return-void

    .end local v0    # "fromLiveScan":Z
    :cond_2e
    move v0, v4

    .line 428
    goto :goto_f

    .line 439
    .restart local v0    # "fromLiveScan":Z
    :pswitch_30
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_2d

    .line 442
    :pswitch_34
    iget-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/ScanFromWebPageManager;->isScanFromWebPage()Z

    move-result v4

    if-nez v4, :cond_44

    .line 443
    :cond_40
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_2d

    .line 445
    :cond_44
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_2d

    .line 449
    :pswitch_48
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 450
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_92

    const-string v5, "preferences_bulk_mode"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/zxing/client/android/R$string;->msg_bulk_mode_scanned:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 454
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_2d

    .line 456
    .end local v1    # "message":Ljava/lang/String;
    :cond_92
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_2d

    .line 436
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_30
        :pswitch_30
        :pswitch_34
        :pswitch_48
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 365
    if-ne p2, v3, :cond_1e

    .line 366
    const v2, 0xbacc

    if-ne p1, v2, :cond_1e

    .line 367
    const-string v2, "ITEM_NUMBER"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 368
    .local v1, "itemNumber":I
    if-ltz v1, :cond_1e

    .line 369
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/google/zxing/client/android/history/HistoryManager;->buildHistoryItem(I)Lcom/google/zxing/client/android/history/HistoryItem;

    move-result-object v0

    .line 370
    .local v0, "historyItem":Lcom/google/zxing/client/android/history/HistoryItem;
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/history/HistoryItem;->getResult()Lcom/google/zxing/Result;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 374
    .end local v0    # "historyItem":Lcom/google/zxing/client/android/history/HistoryItem;
    .end local v1    # "itemNumber":I
    :cond_1e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 133
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 134
    sget v1, Lcom/google/zxing/client/android/R$layout;->capture:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->setContentView(I)V

    .line 136
    iput-boolean v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 137
    new-instance v1, Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/history/HistoryManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    .line 138
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/history/HistoryManager;->trimHistory()V

    .line 139
    new-instance v1, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 140
    new-instance v1, Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    .line 141
    new-instance v1, Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 143
    sget v1, Lcom/google/zxing/client/android/R$xml;->preferences:I

    invoke-static {p0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 145
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->showHelpOnFirstLaunch()Z

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 313
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    sget v1, Lcom/google/zxing/client/android/R$menu;->capture:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->shutdown()V

    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 279
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 283
    sparse-switch p1, :sswitch_data_3a

    .line 307
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_9
    :sswitch_9
    return v0

    .line 285
    :sswitch_a
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_17

    .line 286
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(I)V

    .line 287
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_9

    .line 290
    :cond_17
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    if-eq v1, v2, :cond_23

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_5

    :cond_23
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_5

    .line 291
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_9

    .line 301
    :sswitch_2d
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_9

    .line 304
    :sswitch_33
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_9

    .line 283
    nop

    :sswitch_data_3a
    .sparse-switch
        0x4 -> :sswitch_a
        0x18 -> :sswitch_33
        0x19 -> :sswitch_2d
        0x1b -> :sswitch_9
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/zxing/client/android/R$id;->menu_share:I

    if-ne v1, v2, :cond_22

    .line 345
    const-class v1, Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 360
    :goto_20
    const/4 v1, 0x1

    :goto_21
    return v1

    .line 347
    :cond_22
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/zxing/client/android/R$id;->menu_history:I

    if-ne v1, v2, :cond_3a

    .line 348
    const-class v1, Lcom/google/zxing/client/android/history/HistoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const v1, 0xbacc

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20

    .line 350
    :cond_3a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/zxing/client/android/R$id;->menu_settings:I

    if-ne v1, v2, :cond_4f

    .line 351
    const-class v1, Lcom/google/zxing/client/android/PreferencesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 353
    :cond_4f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/zxing/client/android/R$id;->menu_help:I

    if-ne v1, v2, :cond_64

    .line 354
    const-class v1, Lcom/google/zxing/client/android/HelpActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 357
    :cond_64
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_21
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 260
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v2, :cond_c

    .line 261
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    .line 262
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 264
    :cond_c
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/InactivityTimer;->onPause()V

    .line 265
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/AmbientLightManager;->stop()V

    .line 266
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 267
    iget-boolean v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v2, :cond_2e

    .line 268
    sget v2, Lcom/google/zxing/client/android/R$id;->preview_view:I

    invoke-virtual {p0, v2}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 269
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 270
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 272
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    :cond_2e
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 273
    return-void
.end method

.method protected onResume()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    new-instance v10, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 158
    sget v10, Lcom/google/zxing/client/android/R$id;->viewfinder_view:I

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/client/android/ViewfinderView;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 159
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    iget-object v13, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v13}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 161
    sget v10, Lcom/google/zxing/client/android/R$id;->result_view:I

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    .line 162
    sget v10, Lcom/google/zxing/client/android/R$id;->status_view:I

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    .line 164
    iput-object v14, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 165
    iput-object v14, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 167
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->resetStatusView()V

    .line 169
    sget v10, Lcom/google/zxing/client/android/R$id;->preview_view:I

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceView;

    .line 170
    .local v8, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    .line 171
    .local v7, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-eqz v10, :cond_e1

    .line 174
    invoke-direct {p0, v7}, Lcom/google/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 181
    :goto_4e
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/BeepManager;->updatePrefs()V

    .line 182
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    iget-object v13, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v13}, Lcom/google/zxing/client/android/AmbientLightManager;->start(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 184
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/InactivityTimer;->onResume()V

    .line 186
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 188
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 189
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "preferences_copy_to_clipboard"

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_ea

    if-eqz v5, :cond_79

    const-string v10, "SAVE_HISTORY"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_ea

    :cond_79
    move v10, v11

    :goto_7a
    iput-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    .line 191
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 192
    iput-object v14, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 193
    iput-object v14, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 195
    if-eqz v5, :cond_e0

    .line 197
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "dataString":Ljava/lang/String;
    const-string v10, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ec

    .line 203
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 204
    invoke-static {v5}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 205
    invoke-static {v5}, Lcom/google/zxing/client/android/DecodeHintManager;->parseDecodeHints(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeHints:Ljava/util/Map;

    .line 207
    const-string v10, "SCAN_WIDTH"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cb

    const-string v10, "SCAN_HEIGHT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 208
    const-string v10, "SCAN_WIDTH"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 209
    .local v9, "width":I
    const-string v10, "SCAN_HEIGHT"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 210
    .local v3, "height":I
    if-lez v9, :cond_cb

    if-lez v3, :cond_cb

    .line 211
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v9, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 215
    .end local v3    # "height":I
    .end local v9    # "width":I
    :cond_cb
    const-string v10, "PROMPT_MESSAGE"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "customPromptMessage":Ljava/lang/String;
    if-eqz v1, :cond_d8

    .line 217
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .end local v1    # "customPromptMessage":Ljava/lang/String;
    :cond_d8
    :goto_d8
    const-string v10, "CHARACTER_SET"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 244
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "dataString":Ljava/lang/String;
    :cond_e0
    return-void

    .line 177
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_e1
    invoke-interface {v7, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 178
    const/4 v10, 0x3

    invoke-interface {v7, v10}, Landroid/view/SurfaceHolder;->setType(I)V

    goto/16 :goto_4e

    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_ea
    move v10, v12

    .line 189
    goto :goto_7a

    .line 220
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "dataString":Ljava/lang/String;
    :cond_ec
    if-eqz v2, :cond_109

    const-string v10, "http://www.google"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_109

    const-string v10, "/m/products/scan"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_109

    .line 223
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 224
    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 225
    sget-object v10, Lcom/google/zxing/client/android/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Collection;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_d8

    .line 227
    :cond_109
    invoke-static {v2}, Lcom/google/zxing/client/android/CaptureActivity;->isZXingURL(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 231
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 232
    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 233
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 234
    .local v4, "inputUri":Landroid/net/Uri;
    new-instance v10, Lcom/google/zxing/client/android/ScanFromWebPageManager;

    invoke-direct {v10, v4}, Lcom/google/zxing/client/android/ScanFromWebPageManager;-><init>(Landroid/net/Uri;)V

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->scanFromWebPageManager:Lcom/google/zxing/client/android/ScanFromWebPageManager;

    .line 235
    invoke-static {v4}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 237
    invoke-static {v4}, Lcom/google/zxing/client/android/DecodeHintManager;->parseDecodeHints(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeHints:Ljava/util/Map;

    goto :goto_d8
.end method

.method public restartPreviewAfterDelay(J)V
    .registers 6
    .param p1, "delayMS"    # J

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_b

    .line 745
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    sget v1, Lcom/google/zxing/client/android/R$id;->restart_preview:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 747
    :cond_b
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->resetStatusView()V

    .line 748
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 411
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 394
    if-nez p1, :cond_9

    .line 395
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_9
    iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_13

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 399
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 401
    :cond_13
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 406
    return-void
.end method
