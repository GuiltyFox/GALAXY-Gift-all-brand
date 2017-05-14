.class public Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1796
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1797
    new-instance v0, Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    .line 1819
    :goto_f
    return-void

    .line 1798
    :cond_10
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    .line 1799
    new-instance v0, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1800
    :cond_1c
    const/16 v1, 0x15

    if-lt v0, v1, :cond_28

    .line 1801
    new-instance v0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1802
    :cond_28
    const/16 v1, 0x13

    if-lt v0, v1, :cond_34

    .line 1803
    new-instance v0, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1804
    :cond_34
    const/16 v1, 0x12

    if-lt v0, v1, :cond_40

    .line 1805
    new-instance v0, Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1806
    :cond_40
    const/16 v1, 0x11

    if-lt v0, v1, :cond_4c

    .line 1807
    new-instance v0, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1808
    :cond_4c
    const/16 v1, 0x10

    if-lt v0, v1, :cond_58

    .line 1809
    new-instance v0, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1810
    :cond_58
    const/16 v1, 0xf

    if-lt v0, v1, :cond_64

    .line 1811
    new-instance v0, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1812
    :cond_64
    const/16 v1, 0xe

    if-lt v0, v1, :cond_70

    .line 1813
    new-instance v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1814
    :cond_70
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7c

    .line 1815
    new-instance v0, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f

    .line 1817
    :cond_7c
    new-instance v0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_f
.end method

.method public static A(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 3091
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->B(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static B(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 3113
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->C(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static C(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 3160
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static D(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 3213
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->D(Landroid/view/View;)V

    .line 3214
    return-void
.end method

.method public static E(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 3359
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->E(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static F(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 3384
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->F(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static G(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 3452
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->G(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static H(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 3461
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->H(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static a(II)I
    .registers 3

    .prologue
    .line 2475
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .registers 4

    .prologue
    .line 2424
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1858
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .prologue
    .line 3012
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 2670
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;F)V

    .line 2671
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .registers 4

    .prologue
    .line 3508
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;II)V

    .line 3509
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .registers 11

    .prologue
    .line 2562
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;IIII)V

    .line 2563
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 2268
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 2269
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 3102
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 3103
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 3126
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 3127
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    .prologue
    .line 1998
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1999
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .prologue
    .line 2996
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 2997
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 2076
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2077
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 2093
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 2094
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 2976
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;Z)V

    .line 2977
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .registers 3

    .prologue
    .line 2958
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/ViewGroup;Z)V

    .line 2959
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3

    .prologue
    .line 1829
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .prologue
    .line 3029
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->b(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 2686
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->b(Landroid/view/View;F)V

    .line 2687
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 3040
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->b(Landroid/view/View;Z)V

    .line 3041
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 2008
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .registers 3

    .prologue
    .line 1840
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 2702
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->c(Landroid/view/View;F)V

    .line 2703
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 2136
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->c(Landroid/view/View;I)V

    .line 2137
    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 3053
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->c(Landroid/view/View;Z)V

    .line 3054
    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 2020
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 2044
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->c(Landroid/view/View;)V

    .line 2045
    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 2780
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->d(Landroid/view/View;F)V

    .line 2781
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 2521
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->d(Landroid/view/View;I)V

    .line 2522
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2112
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 2792
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->e(Landroid/view/View;F)V

    .line 2793
    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 3409
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->f(Landroid/view/View;I)V

    .line 3410
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 2232
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->e(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 2880
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->f(Landroid/view/View;F)V

    .line 2881
    return-void
.end method

.method public static f(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 3418
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->e(Landroid/view/View;I)V

    .line 3419
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2290
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2362
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 2394
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->h(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2438
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2463
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2533
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2545
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 2589
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->n(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static o(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 2602
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->o(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2633
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->q(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2644
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->r(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static r(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 2

    .prologue
    .line 2656
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->s(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 2861
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->p(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static t(Landroid/view/View;)F
    .registers 2

    .prologue
    .line 2889
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->v(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static u(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 2937
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->t(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static v(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 2945
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->u(Landroid/view/View;)V

    .line 2946
    return-void
.end method

.method public static w(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 2966
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->x(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static x(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 2987
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->y(Landroid/view/View;)V

    .line 2988
    return-void
.end method

.method public static y(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 3071
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->m(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static z(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 3081
    sget-object v0, Landroid/support/v4/view/ViewCompat;->a:Landroid/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;->z(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
