.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;->a(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field final synthetic b:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    .prologue
    .line 141
    iput-object p1, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->b:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

    iput-object p2, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 173
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 157
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 151
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 162
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 178
    return-void
.end method
