.class Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"

# interfaces
.implements Landroid/support/v4/view/MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    .prologue
    .line 43
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    .prologue
    .line 48
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method
