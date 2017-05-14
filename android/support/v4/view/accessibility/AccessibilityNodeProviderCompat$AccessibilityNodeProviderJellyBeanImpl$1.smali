.class Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatJellyBean$AccessibilityNodeInfoBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

.field final synthetic b:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)V
    .registers 3

    .prologue
    .line 50
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;->b:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;

    iput-object p2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    .line 79
    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->a(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 80
    if-nez v0, :cond_a

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 62
    if-nez v3, :cond_a

    .line 63
    const/4 v0, 0x0

    .line 71
    :goto_9
    return-object v0

    .line 65
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 67
    const/4 v0, 0x0

    move v2, v0

    :goto_15
    if-ge v2, v4, :cond_28

    .line 68
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 69
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_28
    move-object v0, v1

    .line 71
    goto :goto_9
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl$1;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
