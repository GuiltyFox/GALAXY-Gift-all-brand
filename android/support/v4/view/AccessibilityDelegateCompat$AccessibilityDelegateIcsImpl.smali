.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;
.super Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;
.source "AccessibilityDelegateCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    invoke-static {}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {v0}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->a(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 204
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 205
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .prologue
    .line 185
    invoke-virtual {p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .prologue
    .line 172
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .prologue
    .line 198
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 179
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    return-void
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 192
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 193
    return-void
.end method

.method public d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 210
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 211
    return-void
.end method
