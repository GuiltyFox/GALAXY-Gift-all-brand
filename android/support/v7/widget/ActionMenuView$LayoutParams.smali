.class public Landroid/support/v7/widget/ActionMenuView$LayoutParams;
.super Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.source "ActionMenuView.java"


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 820
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 822
    return-void
.end method

.method constructor <init>(IIZ)V
    .registers 4

    .prologue
    .line 825
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 826
    iput-boolean p3, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 827
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 807
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 808
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V
    .registers 3

    .prologue
    .line 815
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    iget-boolean v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 817
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .prologue
    .line 811
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    return-void
.end method
