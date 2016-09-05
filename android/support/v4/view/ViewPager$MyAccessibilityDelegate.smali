.class Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    .prologue
    .line 2936
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private a()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2989
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v1

    if-le v1, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    .prologue
    .line 2940
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2941
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2942
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 2944
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a(Z)V

    .line 2945
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_46

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 2947
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a(I)V

    .line 2948
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b(I)V

    .line 2949
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->c(I)V

    .line 2951
    :cond_46
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .prologue
    .line 2955
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2956
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(Ljava/lang/CharSequence;)V

    .line 2957
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->i(Z)V

    .line 2958
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2959
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 2961
    :cond_21
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2962
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 2964
    :cond_2f
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2968
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2985
    :goto_8
    return v0

    .line 2971
    :cond_9
    sparse-switch p2, :sswitch_data_40

    move v0, v1

    .line 2985
    goto :goto_8

    .line 2973
    :sswitch_e
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2974
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_24
    move v0, v1

    .line 2977
    goto :goto_8

    .line 2979
    :sswitch_26
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2980
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_3d
    move v0, v1

    .line 2983
    goto :goto_8

    .line 2971
    nop

    :sswitch_data_40
    .sparse-switch
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_26
    .end sparse-switch
.end method
