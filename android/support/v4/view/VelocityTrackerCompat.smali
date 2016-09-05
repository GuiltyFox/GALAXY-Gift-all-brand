.class public final Landroid/support/v4/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 68
    new-instance v0, Landroid/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->a:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    .line 72
    :goto_d
    return-void

    .line 70
    :cond_e
    new-instance v0, Landroid/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->a:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .registers 3

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->a:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .registers 3

    .prologue
    .line 91
    sget-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->a:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
