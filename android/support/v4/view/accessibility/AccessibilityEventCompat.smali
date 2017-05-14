.class public final Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# static fields
.field private static final a:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    .line 143
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    .line 151
    :goto_d
    return-void

    .line 144
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 145
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_d

    .line 146
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    .line 147
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_d

    .line 149
    :cond_2a
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .registers 2

    .prologue
    .line 345
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3

    .prologue
    .line 357
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 358
    return-void
.end method

.method public static b(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 2

    .prologue
    .line 374
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method
