.class public Lcom/journeyapps/barcodescanner/RotationListener;
.super Ljava/lang/Object;
.source "RotationListener.java"


# instance fields
.field private a:I

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/OrientationEventListener;

.field private d:Lcom/journeyapps/barcodescanner/RotationCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/RotationListener;I)I
    .registers 2

    .prologue
    .line 16
    iput p1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->a:I

    return p1
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->b:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/RotationListener;)Lcom/journeyapps/barcodescanner/RotationCallback;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->d:Lcom/journeyapps/barcodescanner/RotationCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/RotationListener;)I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->a:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->c:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_a

    .line 63
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->c:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 65
    :cond_a
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->c:Landroid/view/OrientationEventListener;

    .line 66
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->b:Landroid/view/WindowManager;

    .line 67
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->d:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 68
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/journeyapps/barcodescanner/RotationCallback;)V
    .registers 6

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/RotationListener;->a()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/RotationListener;->d:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 37
    const-string/jumbo v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->b:Landroid/view/WindowManager;

    .line 40
    new-instance v0, Lcom/journeyapps/barcodescanner/RotationListener$1;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/journeyapps/barcodescanner/RotationListener$1;-><init>(Lcom/journeyapps/barcodescanner/RotationListener;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->c:Landroid/view/OrientationEventListener;

    .line 54
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->c:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 56
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->a:I

    .line 57
    return-void
.end method
