.class Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1880
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .prologue
    .line 1937
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1938
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1939
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1940
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    .line 1941
    invoke-static {p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v0

    if-lez v0, :cond_39

    const/4 v0, 0x1

    .line 1942
    :goto_19
    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a(Z)V

    .line 1943
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->d(I)V

    .line 1944
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->e(I)V

    .line 1945
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->f(I)V

    .line 1946
    invoke-static {p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->g(I)V

    .line 1947
    return-void

    .line 1941
    :cond_39
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .prologue
    .line 1918
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1919
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1920
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(Ljava/lang/CharSequence;)V

    .line 1921
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1922
    invoke-static {p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v0

    .line 1923
    if-lez v0, :cond_34

    .line 1924
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->i(Z)V

    .line 1925
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_29

    .line 1926
    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 1928
    :cond_29
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_34

    .line 1929
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 1933
    :cond_34
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1883
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1913
    :goto_8
    return v0

    .line 1886
    :cond_9
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1887
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    .line 1888
    goto :goto_8

    .line 1890
    :cond_13
    sparse-switch p2, :sswitch_data_64

    move v0, v1

    .line 1913
    goto :goto_8

    .line 1892
    :sswitch_18
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1893
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1894
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 1895
    invoke-static {p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v3

    .line 1894
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1896
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v2, v3, :cond_3d

    .line 1897
    invoke-virtual {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->b(II)V

    goto :goto_8

    :cond_3d
    move v0, v1

    .line 1901
    goto :goto_8

    .line 1903
    :sswitch_3f
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1904
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1905
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int v2, v3, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1906
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v2, v3, :cond_61

    .line 1907
    invoke-virtual {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->b(II)V

    goto :goto_8

    :cond_61
    move v0, v1

    .line 1911
    goto :goto_8

    .line 1890
    nop

    :sswitch_data_64
    .sparse-switch
        0x1000 -> :sswitch_18
        0x2000 -> :sswitch_3f
    .end sparse-switch
.end method
