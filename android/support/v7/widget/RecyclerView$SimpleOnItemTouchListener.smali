.class public Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 8729
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .prologue
    .line 8738
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 8734
    return-void
.end method
