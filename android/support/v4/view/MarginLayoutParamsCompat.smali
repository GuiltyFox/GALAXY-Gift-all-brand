.class public final Landroid/support/v4/view/MarginLayoutParamsCompat;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 129
    new-instance v0, Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplJbMr1;

    invoke-direct {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplJbMr1;-><init>()V

    sput-object v0, Landroid/support/v4/view/MarginLayoutParamsCompat;->a:Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    .line 133
    :goto_d
    return-void

    .line 131
    :cond_e
    new-instance v0, Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/view/MarginLayoutParamsCompat;->a:Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2

    .prologue
    .line 147
    sget-object v0, Landroid/support/v4/view/MarginLayoutParamsCompat;->a:Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/view/MarginLayoutParamsCompat;->a:Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method
