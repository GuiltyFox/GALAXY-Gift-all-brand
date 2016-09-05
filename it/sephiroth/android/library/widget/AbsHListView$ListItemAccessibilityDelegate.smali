.class Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "AbsHListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    .prologue
    .line 1992
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1996
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1998
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;)I

    move-result v1

    .line 1999
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2001
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    if-nez v0, :cond_18

    .line 2026
    :cond_17
    :goto_17
    return-void

    .line 2005
    :cond_18
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2009
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-ne v1, v0, :cond_57

    .line 2010
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->e(Z)V

    .line 2011
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 2016
    :goto_36
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2017
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 2018
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->f(Z)V

    .line 2021
    :cond_46
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2022
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 2023
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->g(Z)V

    goto :goto_17

    .line 2013
    :cond_57
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    goto :goto_36
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2030
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 2078
    :goto_a
    return v0

    .line 2034
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;)I

    move-result v3

    .line 2035
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2037
    if-eq v3, v6, :cond_1d

    if-nez v0, :cond_1f

    :cond_1d
    move v0, v2

    .line 2039
    goto :goto_a

    .line 2042
    :cond_1f
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2d
    move v0, v2

    .line 2044
    goto :goto_a

    .line 2047
    :cond_2f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->g(I)J

    move-result-wide v4

    .line 2049
    sparse-switch p2, :sswitch_data_7e

    move v0, v2

    .line 2078
    goto :goto_a

    .line 2051
    :sswitch_3a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_49

    .line 2052
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelection(I)V

    move v0, v1

    .line 2053
    goto :goto_a

    :cond_49
    move v0, v2

    .line 2056
    goto :goto_a

    .line 2058
    :sswitch_4b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v3, :cond_5a

    .line 2059
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelection(I)V

    move v0, v1

    .line 2060
    goto :goto_a

    :cond_5a
    move v0, v2

    .line 2063
    goto :goto_a

    .line 2065
    :sswitch_5c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2066
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_a

    :cond_6b
    move v0, v2

    .line 2069
    goto :goto_a

    .line 2071
    :sswitch_6d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2072
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$ListItemAccessibilityDelegate;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_a

    :cond_7c
    move v0, v2

    .line 2075
    goto :goto_a

    .line 2049
    :sswitch_data_7e
    .sparse-switch
        0x4 -> :sswitch_4b
        0x8 -> :sswitch_3a
        0x10 -> :sswitch_5c
        0x20 -> :sswitch_6d
    .end sparse-switch
.end method
