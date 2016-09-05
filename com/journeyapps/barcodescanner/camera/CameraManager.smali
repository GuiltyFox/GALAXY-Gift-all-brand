.class public final Lcom/journeyapps/barcodescanner/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/hardware/Camera;

.field private c:Landroid/hardware/Camera$CameraInfo;

.field private d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

.field private e:Lcom/google/zxing/client/android/AmbientLightManager;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private i:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private j:Lcom/journeyapps/barcodescanner/Size;

.field private k:Lcom/journeyapps/barcodescanner/Size;

.field private l:I

.field private m:Landroid/content/Context;

.field private final n:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->l:I

    .line 115
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->m:Landroid/content/Context;

    .line 116
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->n:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 117
    return-void
.end method

.method private static a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    if-nez v0, :cond_1f

    .line 298
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_1d

    .line 301
    new-instance v2, Lcom/journeyapps/barcodescanner/Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    move-object v0, v1

    .line 308
    :goto_1e
    return-object v0

    .line 305
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 306
    new-instance v3, Lcom/journeyapps/barcodescanner/Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3c
    move-object v0, v1

    .line 308
    goto :goto_1e
.end method

.method private a(I)V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 343
    return-void
.end method

.method private b(Z)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->k()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 239
    if-nez v2, :cond_10

    .line 240
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_f
    return-void

    .line 244
    :cond_10
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initial camera parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz p1, :cond_37

    .line 247
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    const-string/jumbo v3, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_37
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->f()Z

    move-result v3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->g()Z

    move-result v0

    if-nez v0, :cond_ba

    const/4 v0, 0x1

    :goto_46
    invoke-static {v2, v3, v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 253
    if-nez p1, :cond_7b

    .line 254
    invoke-static {v2, v1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 256
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->b()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 257
    invoke-static {v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->f(Landroid/hardware/Camera$Parameters;)V

    .line 260
    :cond_59
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 261
    invoke-static {v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->e(Landroid/hardware/Camera$Parameters;)V

    .line 264
    :cond_64
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_7b

    .line 266
    invoke-static {v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->d(Landroid/hardware/Camera$Parameters;)V

    .line 267
    invoke-static {v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->b(Landroid/hardware/Camera$Parameters;)V

    .line 268
    invoke-static {v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->c(Landroid/hardware/Camera$Parameters;)V

    .line 274
    :cond_7b
    invoke-static {v2}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_bc

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->j:Lcom/journeyapps/barcodescanner/Size;

    .line 283
    :goto_88
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "glass-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 286
    invoke-static {v2}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;)V

    .line 289
    :cond_96
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Final camera parameters: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_f

    :cond_ba
    move v0, v1

    .line 251
    goto :goto_46

    .line 278
    :cond_bc
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->i:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->f()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->j:Lcom/journeyapps/barcodescanner/Size;

    .line 280
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->j:Lcom/journeyapps/barcodescanner/Size;

    iget v0, v0, Lcom/journeyapps/barcodescanner/Size;->a:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->j:Lcom/journeyapps/barcodescanner/Size;

    iget v1, v1, Lcom/journeyapps/barcodescanner/Size;->b:I

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_88
.end method

.method static synthetic j()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private k()Landroid/hardware/Camera$Parameters;
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->g:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 228
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->g:Ljava/lang/String;

    .line 232
    :goto_10
    return-object v0

    .line 230
    :cond_11
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private l()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->i:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a()I

    move-result v1

    .line 315
    packed-switch v1, :pswitch_data_4a

    .line 331
    :goto_a
    :pswitch_a
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 332
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 333
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 337
    :goto_1c
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Camera Display Orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v0

    .line 320
    :pswitch_36
    const/16 v0, 0x5a

    .line 321
    goto :goto_a

    .line 323
    :pswitch_39
    const/16 v0, 0xb4

    .line 324
    goto :goto_a

    .line 326
    :pswitch_3c
    const/16 v0, 0x10e

    goto :goto_a

    .line 335
    :cond_3f
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1c

    .line 315
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method private m()V
    .registers 4

    .prologue
    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->l()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->l:I

    .line 349
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->l:I

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_27

    .line 354
    :goto_b
    const/4 v0, 0x0

    :try_start_c
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_31

    .line 365
    :goto_f
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 366
    if-nez v0, :cond_41

    .line 367
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->j:Lcom/journeyapps/barcodescanner/Size;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->k:Lcom/journeyapps/barcodescanner/Size;

    .line 371
    :goto_1f
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->n:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->k:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a(Lcom/journeyapps/barcodescanner/Size;)V

    .line 372
    return-void

    .line 350
    :catch_27
    move-exception v0

    .line 351
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "Failed to set rotation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 355
    :catch_31
    move-exception v0

    .line 358
    const/4 v0, 0x0

    :try_start_33
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b(Z)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_f

    .line 359
    :catch_37
    move-exception v0

    .line 361
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 369
    :cond_41
    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->k:Lcom/journeyapps/barcodescanner/Size;

    goto :goto_1f
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->b(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    .line 124
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_19

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Failed to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_19
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->a(I)I

    move-result v0

    .line 129
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    .line 130
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->c:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 131
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 2

    .prologue
    .line 424
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 425
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->a(Landroid/hardware/Camera;)V

    .line 153
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .registers 2

    .prologue
    .line 432
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->i:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 433
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .registers 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    .line 413
    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    if-eqz v1, :cond_12

    .line 414
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->n:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v1, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 415
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->n:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 417
    :cond_12
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_35

    .line 437
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->i()Z

    move-result v0

    .line 438
    if-eq p1, v0, :cond_35

    .line 439
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz v0, :cond_13

    .line 440
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->b()V

    .line 443
    :cond_13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 444
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 445
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->d()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 446
    invoke-static {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationUtils;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 448
    :cond_27
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 450
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz v0, :cond_35

    .line 451
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->a()V

    .line 455
    :cond_35
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->m()V

    .line 142
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    .line 162
    if-eqz v0, :cond_29

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    if-nez v1, :cond_29

    .line 163
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    .line 165
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 166
    new-instance v0, Lcom/google/zxing/client/android/AmbientLightManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/camera/CameraManager;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 167
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->a()V

    .line 169
    :cond_29
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->b()V

    .line 179
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->d:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 181
    :cond_c
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    if-eqz v0, :cond_17

    .line 182
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->b()V

    .line 183
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->e:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 185
    :cond_17
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    if-eqz v0, :cond_2c

    .line 186
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 187
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->n:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->a(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->f:Z

    .line 190
    :cond_2c
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_c

    .line 200
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    .line 203
    :cond_c
    return-void
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 209
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Rotation not calculated yet. Call configure() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_e
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->l:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public g()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->l:I

    return v0
.end method

.method public h()Lcom/journeyapps/barcodescanner/Size;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->k:Lcom/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_6

    .line 395
    const/4 v0, 0x0

    .line 399
    :goto_5
    return-object v0

    .line 396
    :cond_6
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 397
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->k:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Size;->a()Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    goto :goto_5

    .line 399
    :cond_13
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->k:Lcom/journeyapps/barcodescanner/Size;

    goto :goto_5
.end method

.method public i()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 458
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_22

    .line 460
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_22

    const-string/jumbo v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string/jumbo v2, "torch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    const/4 v0, 0x1

    .line 465
    :cond_22
    return v0
.end method
