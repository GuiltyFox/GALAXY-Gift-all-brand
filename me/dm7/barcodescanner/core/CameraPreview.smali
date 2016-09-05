.class public Lme/dm7/barcodescanner/core/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/hardware/Camera$AutoFocusCallback;

.field private b:Landroid/hardware/Camera;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/hardware/Camera$PreviewCallback;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 25
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 252
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$1;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$1;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->h:Ljava/lang/Runnable;

    .line 261
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$2;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$2;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    .line 31
    return-void
.end method

.method private a(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 5

    .prologue
    .line 141
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_9

    .line 144
    :goto_8
    return-object p1

    :cond_9
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object p1, v0

    goto :goto_8
.end method

.method static synthetic a(Lme/dm7/barcodescanner/core/CameraPreview;)Landroid/hardware/Camera;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    return-object v0
.end method

.method private a(Landroid/hardware/Camera$Size;)V
    .registers 6

    .prologue
    .line 129
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->a(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 130
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 131
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 133
    cmpl-float v2, v2, v1

    if-lez v2, :cond_2e

    .line 134
    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->setViewSize(II)V

    .line 138
    :goto_2d
    return-void

    .line 136
    :cond_2e
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v2, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->setViewSize(II)V

    goto :goto_2d
.end method

.method static synthetic b(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .registers 2

    .prologue
    .line 19
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    return v0
.end method

.method static synthetic c(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .registers 2

    .prologue
    .line 19
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    return v0
.end method

.method static synthetic d(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .registers 2

    .prologue
    .line 19
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    return v0
.end method

.method static synthetic e(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->g()V

    return-void
.end method

.method private f()Landroid/hardware/Camera$Size;
    .registers 19

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-nez v2, :cond_8

    .line 187
    const/4 v3, 0x0

    .line 229
    :cond_7
    :goto_7
    return-object v3

    .line 190
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 191
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/dm7/barcodescanner/core/DisplayUtils;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    .line 192
    iget v3, v4, Landroid/graphics/Point;->x:I

    .line 193
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 194
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lme/dm7/barcodescanner/core/DisplayUtils;->b(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c5

    .line 195
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 196
    iget v2, v4, Landroid/graphics/Point;->x:I

    move v6, v2

    move v2, v3

    .line 201
    :goto_31
    int-to-double v2, v2

    int-to-double v4, v6

    div-double v8, v2, v4

    .line 202
    if-nez v7, :cond_39

    const/4 v3, 0x0

    goto :goto_7

    .line 204
    :cond_39
    const/4 v3, 0x0

    .line 205
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 210
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_43
    :goto_43
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 211
    iget v11, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v11

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v11

    div-double/2addr v12, v14

    .line 212
    sub-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v11, v12, v14

    if-gtz v11, :cond_43

    .line 213
    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v12, v11

    cmpg-double v11, v12, v4

    if-gez v11, :cond_bf

    .line 215
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    move-wide/from16 v16, v4

    move-object v4, v2

    move-wide/from16 v2, v16

    :goto_7d
    move-wide/from16 v16, v2

    move-object v3, v4

    move-wide/from16 v4, v16

    .line 217
    goto :goto_43

    .line 220
    :cond_83
    if-nez v3, :cond_7

    .line 221
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 222
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 223
    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v4

    if-gez v8, :cond_b9

    .line 225
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    move-wide/from16 v16, v4

    move-object v4, v2

    move-wide/from16 v2, v16

    :goto_b3
    move-wide/from16 v16, v2

    move-object v3, v4

    move-wide/from16 v4, v16

    .line 227
    goto :goto_8e

    :cond_b9
    move-wide/from16 v16, v4

    move-object v4, v3

    move-wide/from16 v2, v16

    goto :goto_b3

    :cond_bf
    move-wide/from16 v16, v4

    move-object v4, v3

    move-wide/from16 v2, v16

    goto :goto_7d

    :cond_c5
    move v6, v2

    move v2, v3

    goto/16 :goto_31
.end method

.method private g()V
    .registers 5

    .prologue
    .line 268
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->c:Landroid/os/Handler;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    return-void
.end method

.method private setViewSize(II)V
    .registers 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_14

    .line 151
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    :goto_10
    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-void

    .line 154
    :cond_14
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_10
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_1a

    .line 45
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 46
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 47
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    if-eqz v0, :cond_1b

    .line 48
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->requestLayout()V

    .line 53
    :cond_1a
    :goto_1a
    return-void

    .line 50
    :cond_1b
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->b()V

    goto :goto_1a
.end method

.method public a(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4

    .prologue
    .line 38
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    .line 39
    iput-object p2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->g:Landroid/hardware/Camera$PreviewCallback;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->c:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_33

    .line 78
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 79
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->e()V

    .line 80
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 81
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 82
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->g:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 83
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 84
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-eqz v0, :cond_33

    .line 85
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    if-eqz v0, :cond_34

    .line 86
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->c()V

    .line 95
    :cond_33
    :goto_33
    return-void

    .line 88
    :cond_34
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->g()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    goto :goto_33

    .line 91
    :catch_38
    move-exception v0

    .line 92
    const-string/jumbo v1, "CameraPreview"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public c()V
    .registers 3

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->a:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 105
    :goto_7
    return-void

    .line 100
    :catch_8
    move-exception v0

    .line 103
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->g()V

    goto :goto_7
.end method

.method public d()V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_17

    .line 110
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    .line 111
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 112
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 113
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    .line 118
    :cond_17
    :goto_17
    return-void

    .line 114
    :catch_18
    move-exception v0

    .line 115
    const-string/jumbo v1, "CameraPreview"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public e()V
    .registers 5

    .prologue
    .line 121
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->f()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 123
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 124
    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 125
    invoke-direct {p0, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->a(Landroid/hardware/Camera$Size;)V

    .line 126
    return-void
.end method

.method public getDisplayOrientation()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 161
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 162
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 163
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 164
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 168
    packed-switch v0, :pswitch_data_46

    move v0, v1

    .line 176
    :goto_22
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3c

    .line 177
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 178
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 182
    :goto_30
    return v0

    :pswitch_31
    move v0, v1

    .line 169
    goto :goto_22

    .line 170
    :pswitch_33
    const/16 v0, 0x5a

    goto :goto_22

    .line 171
    :pswitch_36
    const/16 v0, 0xb4

    goto :goto_22

    .line 172
    :pswitch_39
    const/16 v0, 0x10e

    goto :goto_22

    .line 180
    :cond_3c
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_30

    .line 168
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_31
        :pswitch_33
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method

.method public setAutoFocus(Z)V
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->d:Z

    if-eqz v0, :cond_c

    .line 234
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-ne p1, v0, :cond_d

    .line 250
    :cond_c
    :goto_c
    return-void

    .line 237
    :cond_d
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    .line 238
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->e:Z

    if-eqz v0, :cond_28

    .line 239
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    if-eqz v0, :cond_24

    .line 240
    const-string/jumbo v0, "CameraPreview"

    const-string/jumbo v1, "Starting autofocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->c()V

    goto :goto_c

    .line 243
    :cond_24
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->g()V

    goto :goto_c

    .line 246
    :cond_28
    const-string/jumbo v0, "CameraPreview"

    const-string/jumbo v1, "Cancelling autofocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto :goto_c
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_7

    .line 67
    :goto_6
    return-void

    .line 65
    :cond_7
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->d()V

    .line 66
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->b()V

    goto :goto_6
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 58
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->f:Z

    .line 72
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->d()V

    .line 73
    return-void
.end method
