.class public Lcom/rey/material/widget/ListView;
.super Landroid/support/v7/widget/ListViewCompat;
.source "ListView.java"

# interfaces
.implements Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field protected a:I

.field protected b:I

.field private c:Landroid/widget/AbsListView$RecyclerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/ListView;->b:I

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rey/material/widget/ListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/ListView;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/rey/material/widget/ListView;->c:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/rey/material/util/ViewUtil;->a(Landroid/view/View;I)V

    .line 62
    invoke-virtual {p0}, Lcom/rey/material/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/ListView;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .prologue
    .line 44
    new-instance v0, Lcom/rey/material/widget/ListView$1;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/ListView$1;-><init>(Lcom/rey/material/widget/ListView;)V

    invoke-super {p0, v0}, Landroid/support/v7/widget/ListViewCompat;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/rey/material/widget/ListView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_14

    .line 57
    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/ThemeManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v0

    iput v0, p0, Lcom/rey/material/widget/ListView;->a:I

    .line 58
    :cond_14
    return-void
.end method

.method public a(Lcom/rey/material/app/ThemeManager$OnThemeChangedEvent;)V
    .registers 4

    .prologue
    .line 70
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    iget v1, p0, Lcom/rey/material/widget/ListView;->a:I

    invoke-virtual {v0, v1}, Lcom/rey/material/app/ThemeManager;->a(I)I

    move-result v0

    .line 71
    iget v1, p0, Lcom/rey/material/widget/ListView;->b:I

    if-eq v1, v0, :cond_15

    .line 72
    iput v0, p0, Lcom/rey/material/widget/ListView;->b:I

    .line 73
    iget v0, p0, Lcom/rey/material/widget/ListView;->b:I

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/ListView;->a(I)V

    .line 75
    :cond_15
    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .prologue
    .line 66
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->onAttachedToWindow()V

    .line 80
    iget v0, p0, Lcom/rey/material/widget/ListView;->a:I

    if-eqz v0, :cond_12

    .line 81
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/ThemeManager;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/ListView;->a(Lcom/rey/material/app/ThemeManager$OnThemeChangedEvent;)V

    .line 84
    :cond_12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->onDetachedFromWindow()V

    .line 89
    iget v0, p0, Lcom/rey/material/widget/ListView;->a:I

    if-eqz v0, :cond_e

    .line 90
    invoke-static {}, Lcom/rey/material/app/ThemeManager;->a()Lcom/rey/material/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/ThemeManager;->b(Lcom/rey/material/app/ThemeManager$OnThemeChangedListener;)V

    .line 91
    :cond_e
    return-void
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/rey/material/widget/ListView;->c:Landroid/widget/AbsListView$RecyclerListener;

    .line 96
    return-void
.end method
