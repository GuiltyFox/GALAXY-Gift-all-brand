.class public Lcom/journeyapps/barcodescanner/CameraPreview;
.super Landroid/view/ViewGroup;
.source "CameraPreview.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Landroid/view/SurfaceView;

.field private g:Landroid/view/TextureView;

.field private h:Z

.field private i:Lcom/journeyapps/barcodescanner/RotationListener;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private l:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private m:Lcom/journeyapps/barcodescanner/Size;

.field private n:Lcom/journeyapps/barcodescanner/Size;

.field private o:Landroid/graphics/Rect;

.field private p:Lcom/journeyapps/barcodescanner/Size;

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/graphics/Rect;

.field private s:Lcom/journeyapps/barcodescanner/Size;

.field private t:D

.field private final u:Landroid/view/SurfaceHolder$Callback;

.field private final v:Landroid/os/Handler$Callback;

.field private w:Lcom/journeyapps/barcodescanner/RotationCallback;

.field private final x:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-class v0, Lcom/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 208
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 86
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 91
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 113
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 116
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 119
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Lcom/journeyapps/barcodescanner/Size;

    .line 123
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:D

    .line 152
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$2;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Landroid/view/SurfaceHolder$Callback;

    .line 175
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$3;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:Landroid/os/Handler$Callback;

    .line 194
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$4;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 294
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$5;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$5;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 209
    invoke-direct {p0, p1, v3, v2, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 91
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 113
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 116
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 119
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Lcom/journeyapps/barcodescanner/Size;

    .line 123
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:D

    .line 152
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$2;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Landroid/view/SurfaceHolder$Callback;

    .line 175
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$3;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:Landroid/os/Handler$Callback;

    .line 194
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$4;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 294
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$5;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$5;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 214
    invoke-direct {p0, p1, p2, v2, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 91
    iput-boolean v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 113
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 116
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 119
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Lcom/journeyapps/barcodescanner/Size;

    .line 123
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:D

    .line 152
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$2;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Landroid/view/SurfaceHolder$Callback;

    .line 175
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$3;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:Landroid/os/Handler$Callback;

    .line 194
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$4;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 294
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$5;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$5;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 219
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 220
    return-void
.end method

.method private a()Landroid/view/TextureView$SurfaceTextureListener;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$1;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    return-object v0
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lcom/journeyapps/barcodescanner/Size;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    .line 226
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->setBackgroundColor(I)V

    .line 229
    :cond_b
    invoke-virtual {p0, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/util/AttributeSet;)V

    .line 231
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->c:Landroid/view/WindowManager;

    .line 233
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->v:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    .line 235
    new-instance v0, Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/RotationListener;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->i:Lcom/journeyapps/barcodescanner/RotationListener;

    .line 236
    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->n()V

    return-void
.end method

.method private a(Lcom/journeyapps/barcodescanner/Size;)V
    .registers 4

    .prologue
    .line 372
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lcom/journeyapps/barcodescanner/Size;

    .line 373
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_25

    .line 374
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a()Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    move-result-object v0

    if-nez v0, :cond_25

    .line 375
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getDisplayRotation()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;-><init>(ILcom/journeyapps/barcodescanner/Size;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->k:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 376
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->k:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V

    .line 377
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c()V

    .line 380
    :cond_25
    return-void
.end method

.method private a(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .registers 4

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    if-nez v0, :cond_21

    .line 648
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string/jumbo v1, "Starting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    .line 650
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d()V

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 653
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->c()V

    .line 654
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->b()V

    .line 656
    :cond_21
    return-void
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/CameraPreview;)Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    return-object v0
.end method

.method private b()V
    .registers 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->d()V

    .line 267
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->g()V

    .line 268
    return-void
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/CameraPreview;Lcom/journeyapps/barcodescanner/Size;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->b(Lcom/journeyapps/barcodescanner/Size;)V

    return-void
.end method

.method private b(Lcom/journeyapps/barcodescanner/Size;)V
    .registers 3

    .prologue
    .line 383
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    .line 384
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lcom/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_f

    .line 385
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->m()V

    .line 386
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->requestLayout()V

    .line 387
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->n()V

    .line 389
    :cond_f
    return-void
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->b()V

    return-void
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/CameraPreview;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:Ljava/util/List;

    return-object v0
.end method

.method private getDisplayRotation()I
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method static synthetic k()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    if-eqz v0, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_24

    .line 272
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    .line 273
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 274
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->addView(Landroid/view/View;)V

    .line 283
    :goto_23
    return-void

    .line 276
    :cond_24
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_3f

    .line 278
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 280
    :cond_3f
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 281
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->addView(Landroid/view/View;)V

    goto :goto_23
.end method

.method private m()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 326
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lcom/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->k:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    if-nez v0, :cond_1d

    .line 327
    :cond_e
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 328
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 329
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "containerSize or previewSize is not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1d
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    iget v0, v0, Lcom/journeyapps/barcodescanner/Size;->a:I

    .line 334
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    iget v1, v1, Lcom/journeyapps/barcodescanner/Size;->b:I

    .line 336
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lcom/journeyapps/barcodescanner/Size;

    iget v2, v2, Lcom/journeyapps/barcodescanner/Size;->a:I

    .line 337
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lcom/journeyapps/barcodescanner/Size;

    iget v3, v3, Lcom/journeyapps/barcodescanner/Size;->b:I

    .line 339
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->k:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    iget-object v5, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {v4, v5}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    .line 341
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 342
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v2}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 343
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 344
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 346
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    mul-int/2addr v5, v1

    iget-object v6, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v6

    iget-object v6, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v0, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v1, v2

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 351
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_97

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_a4

    .line 352
    :cond_97
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 353
    iput-object v7, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    .line 354
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string/jumbo v1, "Preview frame is too small"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_a3
    return-void

    .line 356
    :cond_a4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->a()V

    goto :goto_a3
.end method

.method private n()V
    .registers 5

    .prologue
    .line 434
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lcom/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    if-eqz v0, :cond_37

    .line 435
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lcom/journeyapps/barcodescanner/Size;

    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 436
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    .line 448
    :cond_37
    :goto_37
    return-void

    .line 437
    :cond_38
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_37

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 438
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_6a

    .line 439
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 443
    :cond_6a
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    goto :goto_37
.end method

.method private o()V
    .registers 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_d

    .line 634
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string/jumbo v1, "initCamera called twice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_c
    return-void

    .line 638
    :cond_d
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 639
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 641
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Landroid/os/Handler;)V

    .line 642
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b()V

    goto :goto_c
.end method


# virtual methods
.method protected a(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Matrix;
    .registers 9

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 401
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->a:I

    int-to-float v1, v1

    iget v2, p1, Lcom/journeyapps/barcodescanner/Size;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 402
    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->a:I

    int-to-float v2, v2

    iget v3, p2, Lcom/journeyapps/barcodescanner/Size;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 409
    cmpg-float v3, v1, v2

    if-gez v3, :cond_38

    .line 410
    div-float v1, v2, v1

    .line 417
    :goto_18
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 419
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 422
    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->a:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 423
    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->b:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    .line 424
    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->a:I

    int-to-float v3, v3

    sub-float v1, v3, v1

    div-float/2addr v1, v4

    .line 425
    iget v3, p1, Lcom/journeyapps/barcodescanner/Size;->b:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    div-float/2addr v0, v4

    .line 428
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 430
    return-object v2

    .line 414
    :cond_38
    div-float/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_18
.end method

.method protected a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 702
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 703
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 705
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Lcom/journeyapps/barcodescanner/Size;

    if-eqz v1, :cond_2f

    .line 707
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Lcom/journeyapps/barcodescanner/Size;

    iget v2, v2, Lcom/journeyapps/barcodescanner/Size;->a:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 708
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Lcom/journeyapps/barcodescanner/Size;

    iget v3, v3, Lcom/journeyapps/barcodescanner/Size;->b:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 709
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 719
    :cond_2e
    :goto_2e
    return-object v0

    .line 713
    :cond_2f
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:D

    mul-double/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:D

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v1, v2

    .line 714
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 715
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_2e

    .line 717
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_2e
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 251
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 253
    sget v1, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview_zxing_framing_rect_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 254
    sget v2, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview_zxing_framing_rect_height:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 256
    if-lez v1, :cond_25

    if-lez v2, :cond_25

    .line 257
    new-instance v3, Lcom/journeyapps/barcodescanner/Size;

    invoke-direct {v3, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    iput-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->s:Lcom/journeyapps/barcodescanner/Size;

    .line 260
    :cond_25
    sget v1, Lcom/google/zxing/client/android/R$styleable;->zxing_camera_preview_zxing_use_texture_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;)V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 2

    .prologue
    .line 508
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->l:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 509
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 663
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 551
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_1a

    .line 554
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e()V

    .line 555
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 558
    :cond_1a
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lcom/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2d

    .line 559
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 562
    :cond_2d
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lcom/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_40

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_40

    .line 563
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 566
    :cond_40
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->m:Lcom/journeyapps/barcodescanner/Size;

    .line 567
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->n:Lcom/journeyapps/barcodescanner/Size;

    .line 568
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 569
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->i:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/RotationListener;->a()V

    .line 571
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->x:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->c()V

    .line 572
    return-void
.end method

.method public e()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->q:Landroid/graphics/Rect;

    return-object v0
.end method

.method public f()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method public g()V
    .registers 4

    .prologue
    .line 519
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 520
    sget-object v0, Lcom/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->o()V

    .line 525
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->p:Lcom/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_24

    .line 528
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->n()V

    .line 537
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->requestLayout()V

    .line 538
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->i:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->w:Lcom/journeyapps/barcodescanner/RotationCallback;

    invoke-virtual {v0, v1, v2}, Lcom/journeyapps/barcodescanner/RotationListener;->a(Landroid/content/Context;Lcom/journeyapps/barcodescanner/RotationCallback;)V

    .line 539
    return-void

    .line 529
    :cond_24
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_34

    .line 531
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->u:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_15

    .line 532
    :cond_34
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_15

    .line 533
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_15
.end method

.method public getMarginFraction()D
    .registers 3

    .prologue
    .line 588
    iget-wide v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:D

    return-wide v0
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public i()Lcom/journeyapps/barcodescanner/camera/CameraInstance;
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->h:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 242
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->l()V

    .line 243
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 453
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/Size;)V

    .line 455
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_39

    .line 456
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    if-nez v0, :cond_23

    .line 459
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 466
    :cond_22
    :goto_22
    return-void

    .line 461
    :cond_23
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_22

    .line 463
    :cond_39
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_22

    .line 464
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/TextureView;->layout(IIII)V

    goto :goto_22
.end method

.method public setMarginFraction(D)V
    .registers 6

    .prologue
    .line 598
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_f

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The margin fraction must be less than 0.5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_f
    iput-wide p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->t:D

    .line 602
    return-void
.end method

.method public setTorch(Z)V
    .registers 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_9

    .line 367
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Z)V

    .line 369
    :cond_9
    return-void
.end method

.method public setUseTextureView(Z)V
    .registers 2

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 617
    return-void
.end method
