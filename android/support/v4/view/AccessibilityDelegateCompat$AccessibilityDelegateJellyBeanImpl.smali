.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;
.super Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;
.source "AccessibilityDelegateCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 5

    .prologue
    .line 288
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean;->a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 290
    if-eqz v1, :cond_c

    .line 291
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    .line 293
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 230
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateJellyBeanImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {v0}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean;->a(Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean$AccessibilityDelegateBridgeJellyBean;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    .prologue
    .line 299
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/AccessibilityDelegateCompatJellyBean;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
