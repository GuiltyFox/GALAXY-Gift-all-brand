.class public Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# static fields
.field private static final a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    .line 2342
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    .line 2362
    :goto_d
    return-void

    .line 2343
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    .line 2344
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d

    .line 2345
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2a

    .line 2346
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d

    .line 2347
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_38

    .line 2348
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d

    .line 2349
    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_46

    .line 2350
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d

    .line 2351
    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_54

    .line 2352
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d

    .line 2353
    :cond_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_62

    .line 2354
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d

    .line 2355
    :cond_62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_70

    .line 2356
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d

    .line 2357
    :cond_70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_7e

    .line 2358
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d

    .line 2360
    :cond_7e
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_d
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 2760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2761
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    .line 2762
    return-void
.end method

.method public static a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    .prologue
    .line 2814
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2

    .prologue
    .line 2748
    if-eqz p0, :cond_8

    .line 2749
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 2751
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4470
    sparse-switch p0, :sswitch_data_50

    .line 4508
    const-string/jumbo v0, "ACTION_UNKNOWN"

    :goto_6
    return-object v0

    .line 4472
    :sswitch_7
    const-string/jumbo v0, "ACTION_FOCUS"

    goto :goto_6

    .line 4474
    :sswitch_b
    const-string/jumbo v0, "ACTION_CLEAR_FOCUS"

    goto :goto_6

    .line 4476
    :sswitch_f
    const-string/jumbo v0, "ACTION_SELECT"

    goto :goto_6

    .line 4478
    :sswitch_13
    const-string/jumbo v0, "ACTION_CLEAR_SELECTION"

    goto :goto_6

    .line 4480
    :sswitch_17
    const-string/jumbo v0, "ACTION_CLICK"

    goto :goto_6

    .line 4482
    :sswitch_1b
    const-string/jumbo v0, "ACTION_LONG_CLICK"

    goto :goto_6

    .line 4484
    :sswitch_1f
    const-string/jumbo v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_6

    .line 4486
    :sswitch_23
    const-string/jumbo v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_6

    .line 4488
    :sswitch_27
    const-string/jumbo v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_6

    .line 4490
    :sswitch_2b
    const-string/jumbo v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_6

    .line 4492
    :sswitch_2f
    const-string/jumbo v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_6

    .line 4494
    :sswitch_33
    const-string/jumbo v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_6

    .line 4496
    :sswitch_37
    const-string/jumbo v0, "ACTION_SCROLL_FORWARD"

    goto :goto_6

    .line 4498
    :sswitch_3b
    const-string/jumbo v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_6

    .line 4500
    :sswitch_3f
    const-string/jumbo v0, "ACTION_CUT"

    goto :goto_6

    .line 4502
    :sswitch_43
    const-string/jumbo v0, "ACTION_COPY"

    goto :goto_6

    .line 4504
    :sswitch_47
    const-string/jumbo v0, "ACTION_PASTE"

    goto :goto_6

    .line 4506
    :sswitch_4b
    const-string/jumbo v0, "ACTION_SET_SELECTION"

    goto :goto_6

    .line 4470
    nop

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_b
        0x4 -> :sswitch_f
        0x8 -> :sswitch_13
        0x10 -> :sswitch_17
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_1f
        0x80 -> :sswitch_23
        0x100 -> :sswitch_27
        0x200 -> :sswitch_2b
        0x400 -> :sswitch_2f
        0x800 -> :sswitch_33
        0x1000 -> :sswitch_37
        0x2000 -> :sswitch_3b
        0x4000 -> :sswitch_43
        0x8000 -> :sswitch_47
        0x10000 -> :sswitch_3f
        0x20000 -> :sswitch_4b
    .end sparse-switch
.end method

.method static synthetic u()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2768
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 3007
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->a(Ljava/lang/Object;I)V

    .line 3008
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 3183
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3184
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2823
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 2824
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 3563
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->d(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3564
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 3294
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->c(Ljava/lang/Object;Z)V

    .line 3295
    return-void
.end method

.method public a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z
    .registers 5

    .prologue
    .line 3040
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 2992
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 3198
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3199
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2929
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 2930
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 3587
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3588
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 3761
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3762
    return-void
.end method

.method public b(Z)V
    .registers 4

    .prologue
    .line 3318
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->d(Ljava/lang/Object;Z)V

    .line 3319
    return-void
.end method

.method public c(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 3207
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3208
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 3151
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 3152
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 3611
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->e(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3612
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 3765
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3766
    return-void
.end method

.method public c(Z)V
    .registers 4

    .prologue
    .line 3343
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->h(Ljava/lang/Object;Z)V

    .line 3344
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 3231
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 3222
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3223
    return-void
.end method

.method public d(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 3906
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->d(Ljava/lang/Object;Landroid/view/View;)V

    .line 3907
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 3635
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3636
    return-void
.end method

.method public d(Z)V
    .registers 4

    .prologue
    .line 3368
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->i(Ljava/lang/Object;Z)V

    .line 3369
    return-void
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 3255
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->h(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 3887
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3888
    return-void
.end method

.method public e(Z)V
    .registers 4

    .prologue
    .line 3392
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->g(Ljava/lang/Object;Z)V

    .line 3393
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 3279
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4405
    if-ne p0, p1, :cond_5

    .line 4422
    :cond_4
    :goto_4
    return v0

    .line 4408
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 4409
    goto :goto_4

    .line 4411
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 4412
    goto :goto_4

    .line 4414
    :cond_15
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 4415
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 4416
    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    .line 4417
    goto :goto_4

    .line 4419
    :cond_21
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 4420
    goto :goto_4
.end method

.method public f(Z)V
    .registers 4

    .prologue
    .line 3416
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->a(Ljava/lang/Object;Z)V

    .line 3417
    return-void
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 3303
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g(Z)V
    .registers 4

    .prologue
    .line 3440
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->e(Ljava/lang/Object;Z)V

    .line 3441
    return-void
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 3327
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h(Z)V
    .registers 4

    .prologue
    .line 3464
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->b(Ljava/lang/Object;Z)V

    .line 3465
    return-void
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 3352
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 4400
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public i(Z)V
    .registers 4

    .prologue
    .line 3512
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->f(Ljava/lang/Object;Z)V

    .line 3513
    return-void
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 3377
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->p(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .registers 4

    .prologue
    .line 3837
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->j(Ljava/lang/Object;Z)V

    .line 3838
    return-void
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 3401
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 3425
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 3449
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 3

    .prologue
    .line 3473
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->n(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 3497
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->o(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 3548
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 3572
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 3596
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 3620
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .registers 3

    .prologue
    .line 3646
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->q(Ljava/lang/Object;)V

    .line 3647
    return-void
.end method

.method public t()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3677
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4428
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4432
    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Landroid/graphics/Rect;)V

    .line 4433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->c(Landroid/graphics/Rect;)V

    .line 4436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    const-string/jumbo v0, "; packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->o()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4439
    const-string/jumbo v0, "; className: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->p()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4440
    const-string/jumbo v0, "; text: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4441
    const-string/jumbo v0, "; contentDescription: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->r()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4442
    const-string/jumbo v0, "; viewId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    const-string/jumbo v0, "; checkable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4445
    const-string/jumbo v0, "; checked: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4446
    const-string/jumbo v0, "; focusable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4447
    const-string/jumbo v0, "; focused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4448
    const-string/jumbo v0, "; selected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4449
    const-string/jumbo v0, "; clickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4450
    const-string/jumbo v0, "; longClickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4451
    const-string/jumbo v0, "; enabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4452
    const-string/jumbo v0, "; password: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "; scrollable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4455
    const-string/jumbo v0, "; ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4456
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b()I

    move-result v0

    :cond_12e
    :goto_12e
    if-eqz v0, :cond_149

    .line 4457
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 4458
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    .line 4459
    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    if-eqz v0, :cond_12e

    .line 4461
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12e

    .line 4464
    :cond_149
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
