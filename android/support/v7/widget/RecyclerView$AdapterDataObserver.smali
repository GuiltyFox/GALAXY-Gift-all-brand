.class public abstract Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .prologue
    .line 9495
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    .prologue
    .line 9499
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 9504
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 9505
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    .prologue
    .line 9509
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .prologue
    .line 9517
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    .prologue
    .line 9513
    return-void
.end method
