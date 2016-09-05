.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# static fields
.field private static final a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 507
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    .line 515
    :goto_d
    return-void

    .line 508
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1c

    .line 509
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_d

    .line 510
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    .line 511
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_d

    .line 513
    :cond_2a
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_d
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    .line 530
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .prologue
    .line 734
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->b(Ljava/lang/Object;I)V

    .line 735
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 714
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->a(Ljava/lang/Object;Z)V

    .line 715
    return-void
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 780
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->a(Ljava/lang/Object;I)V

    .line 781
    return-void
.end method

.method public c(I)V
    .registers 4

    .prologue
    .line 800
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->e(Ljava/lang/Object;I)V

    .line 801
    return-void
.end method

.method public d(I)V
    .registers 4

    .prologue
    .line 818
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->c(Ljava/lang/Object;I)V

    .line 819
    return-void
.end method

.method public e(I)V
    .registers 4

    .prologue
    .line 836
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->d(Ljava/lang/Object;I)V

    .line 837
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1025
    if-ne p0, p1, :cond_5

    .line 1042
    :cond_4
    :goto_4
    return v0

    .line 1028
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 1029
    goto :goto_4

    .line 1031
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 1032
    goto :goto_4

    .line 1034
    :cond_15
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 1035
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 1036
    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1037
    goto :goto_4

    .line 1039
    :cond_21
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1040
    goto :goto_4
.end method

.method public f(I)V
    .registers 4

    .prologue
    .line 853
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->f(Ljava/lang/Object;I)V

    .line 854
    return-void
.end method

.method public g(I)V
    .registers 4

    .prologue
    .line 871
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->g(Ljava/lang/Object;I)V

    .line 872
    return-void
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method
