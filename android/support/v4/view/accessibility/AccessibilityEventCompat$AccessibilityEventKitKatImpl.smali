.class Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;
.source "AccessibilityEventCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3

    .prologue
    .line 135
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3

    .prologue
    .line 130
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 131
    return-void
.end method
