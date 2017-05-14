.class public Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# static fields
.field private static final a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    .line 156
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;

    invoke-direct {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl;-><init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$1;)V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;

    .line 162
    :goto_e
    return-void

    .line 157
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1d

    .line 158
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;

    invoke-direct {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;-><init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$1;)V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;

    goto :goto_e

    .line 160
    :cond_1d
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;

    goto :goto_e
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->b:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->b:Ljava/lang/Object;

    .line 179
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method
