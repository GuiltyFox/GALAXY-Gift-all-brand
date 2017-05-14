.class public final Landroid/support/v4/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_f

    .line 89
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;-><init>(Landroid/support/v4/view/MotionEventCompat$1;)V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    .line 95
    :goto_e
    return-void

    .line 90
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1d

    .line 91
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_e

    .line 93
    :cond_1d
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_e
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .registers 2

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;)I
    .registers 3

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/MotionEvent;I)F
    .registers 3

    .prologue
    .line 472
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->a:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
