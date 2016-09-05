.class Lcom/rey/material/widget/ListPopupWindow$1;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/ListPopupWindow;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 668
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$1;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$1;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->a(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 673
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$1;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->b(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_1d
    if-ge v0, v2, :cond_4a

    .line 674
    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$1;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->b(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 676
    iget-object v4, p0, Lcom/rey/material/widget/ListPopupWindow$1;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v4}, Lcom/rey/material/widget/ListPopupWindow;->c(Lcom/rey/material/widget/ListPopupWindow;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/rey/material/widget/ListPopupWindow$1;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v5}, Lcom/rey/material/widget/ListPopupWindow;->d(Lcom/rey/material/widget/ListPopupWindow;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 677
    iget-object v5, p0, Lcom/rey/material/widget/ListPopupWindow$1;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v5}, Lcom/rey/material/widget/ListPopupWindow;->e(Lcom/rey/material/widget/ListPopupWindow;)I

    move-result v5

    mul-int/2addr v5, v0

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 678
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 680
    :cond_4a
    return v1
.end method
