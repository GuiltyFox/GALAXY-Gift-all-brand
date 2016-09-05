.class Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;
.source "MotionEventCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/MotionEvent;I)F
    .registers 4

    .prologue
    .line 139
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatHoneycombMr1;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
