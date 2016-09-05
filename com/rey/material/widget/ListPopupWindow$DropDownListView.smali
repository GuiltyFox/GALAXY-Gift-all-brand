.class Lcom/rey/material/widget/ListPopupWindow$DropDownListView;
.super Lcom/rey/material/widget/ListView;
.source "ListPopupWindow.java"


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 1591
    const/4 v0, 0x0

    sget v1, Lcom/rey/material/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/rey/material/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1592
    iput-boolean p2, p0, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->d:Z

    .line 1593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1594
    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/ListPopupWindow$DropDownListView;Z)Z
    .registers 2

    .prologue
    .line 1539
    iput-boolean p1, p0, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->c:Z

    return p1
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    .prologue
    .line 1739
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->d:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/rey/material/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 1719
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->d:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/rey/material/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 1729
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->d:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/rey/material/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInTouchMode()Z
    .registers 2

    .prologue
    .line 1709
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->d:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->c:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Lcom/rey/material/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .registers 2

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->e:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Lcom/rey/material/widget/ListView;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
