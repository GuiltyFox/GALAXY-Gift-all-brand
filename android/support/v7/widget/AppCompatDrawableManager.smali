.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCacheLock:Ljava/lang/Object;

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 100
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    .line 106
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 116
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_go_search_api_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_search_api_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_clear_mtrl_alpha:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_voice_search_api_mtrl_alpha:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 135
    new-array v0, v7, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v1, v0, v6

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 146
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 156
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_full_material:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 174
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 900
    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .registers 4

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_b

    .line 481
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 483
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    return-void
.end method

.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .registers 9

    .prologue
    .line 407
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_2b

    .line 409
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 410
    :try_start_9
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 411
    if-nez v0, :cond_1d

    .line 412
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 413
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_1d
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, v3}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 416
    monitor-exit v2

    .line 417
    const/4 v0, 0x1

    .line 419
    :goto_27
    return v0

    .line 416
    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_28

    throw v0

    .line 419
    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .registers 6

    .prologue
    .line 559
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 560
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 562
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 563
    if-nez v0, :cond_1f

    .line 564
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 565
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_1f
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 568
    return-void
.end method

.method private static arrayContains([II)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 493
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget v3, p0, v1

    .line 494
    if-ne v3, p1, :cond_b

    .line 495
    const/4 v0, 0x1

    .line 498
    :cond_a
    return v0

    .line 493
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 8

    .prologue
    const/4 v1, 0x4

    .line 742
    new-array v0, v1, [[I

    .line 743
    new-array v1, v1, [I

    .line 744
    const/4 v2, 0x0

    .line 746
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    .line 749
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v4, v0, v2

    .line 750
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v4

    aput v4, v1, v2

    .line 751
    const/4 v2, 0x1

    .line 753
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->d:[I

    aput-object v4, v0, v2

    .line 754
    invoke-static {v3, p2}, Landroid/support/v4/graphics/ColorUtils;->a(II)I

    move-result v4

    aput v4, v1, v2

    .line 755
    const/4 v2, 0x2

    .line 757
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->b:[I

    aput-object v4, v0, v2

    .line 758
    invoke-static {v3, p2}, Landroid/support/v4/graphics/ColorUtils;->a(II)I

    move-result v3

    aput v3, v1, v2

    .line 759
    const/4 v2, 0x3

    .line 762
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v3, v0, v2

    .line 763
    aput p2, v1, v2

    .line 766
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .registers 5

    .prologue
    .line 217
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 617
    new-array v0, v1, [[I

    .line 618
    new-array v1, v1, [I

    .line 619
    const/4 v2, 0x0

    .line 622
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v3, v0, v2

    .line 623
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 624
    const/4 v2, 0x1

    .line 626
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->e:[I

    aput-object v3, v0, v2

    .line 627
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 628
    const/4 v2, 0x2

    .line 631
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v3, v0, v2

    .line 632
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 635
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 738
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 729
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 8

    .prologue
    const/4 v3, 0x7

    .line 576
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    .line 577
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    .line 579
    new-array v2, v3, [[I

    .line 580
    new-array v3, v3, [I

    .line 581
    const/4 v4, 0x0

    .line 584
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v5, v2, v4

    .line 585
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v5

    aput v5, v3, v4

    .line 586
    const/4 v4, 0x1

    .line 588
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->b:[I

    aput-object v5, v2, v4

    .line 589
    aput v1, v3, v4

    .line 590
    const/4 v4, 0x2

    .line 592
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->c:[I

    aput-object v5, v2, v4

    .line 593
    aput v1, v3, v4

    .line 594
    const/4 v4, 0x3

    .line 596
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->d:[I

    aput-object v5, v2, v4

    .line 597
    aput v1, v3, v4

    .line 598
    const/4 v4, 0x4

    .line 600
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->e:[I

    aput-object v5, v2, v4

    .line 601
    aput v1, v3, v4

    .line 602
    const/4 v4, 0x5

    .line 604
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->f:[I

    aput-object v5, v2, v4

    .line 605
    aput v1, v3, v4

    .line 606
    const/4 v1, 0x6

    .line 609
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v4, v2, v1

    .line 610
    aput v0, v3, v1

    .line 613
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 222
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_c

    .line 223
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 225
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 227
    invoke-static {v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v2

    .line 229
    invoke-direct {p0, p1, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_20

    .line 249
    :cond_1f
    :goto_1f
    return-object v0

    .line 236
    :cond_20
    sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v4, :cond_3d

    .line 237
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    sget v6, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_3d
    if-eqz v0, :cond_1f

    .line 244
    iget v1, v1, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 246
    invoke-direct {p0, p1, v2, v3, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_1f
.end method

.method private createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 707
    new-array v0, v1, [[I

    .line 708
    new-array v1, v1, [I

    .line 709
    const/4 v2, 0x0

    .line 712
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v3, v0, v2

    .line 713
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 714
    const/4 v2, 0x1

    .line 716
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->g:[I

    aput-object v3, v0, v2

    .line 717
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 718
    const/4 v2, 0x2

    .line 721
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v3, v0, v2

    .line 722
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 725
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 6

    .prologue
    const/4 v1, 0x2

    .line 791
    new-array v0, v1, [[I

    .line 792
    new-array v1, v1, [I

    .line 793
    const/4 v2, 0x0

    .line 796
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v3, v0, v2

    .line 797
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 798
    const/4 v2, 0x1

    .line 800
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v3, v0, v2

    .line 801
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 804
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 770
    new-array v0, v1, [[I

    .line 771
    new-array v1, v1, [I

    .line 772
    const/4 v2, 0x0

    .line 775
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v3, v0, v2

    .line 776
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 777
    const/4 v2, 0x1

    .line 779
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->g:[I

    aput-object v3, v0, v2

    .line 780
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 781
    const/4 v2, 0x2

    .line 783
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v3, v0, v2

    .line 784
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    .line 787
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 9

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 661
    new-array v0, v1, [[I

    .line 662
    new-array v1, v1, [I

    .line 665
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 668
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 673
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v3, v0, v4

    .line 674
    aget-object v3, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    aput v3, v1, v4

    .line 677
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->e:[I

    aput-object v3, v0, v5

    .line 678
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v5

    .line 682
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v3, v0, v6

    .line 683
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v1, v6

    .line 703
    :goto_38
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 689
    :cond_3e
    sget-object v2, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v2, v0, v4

    .line 690
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    .line 693
    sget-object v2, Landroid/support/v7/widget/ThemeUtils;->e:[I

    aput-object v2, v0, v5

    .line 694
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    .line 698
    sget-object v2, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v2, v0, v6

    .line 699
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    goto :goto_38
.end method

.method private createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 8

    .prologue
    const v5, 0x1010030

    const/4 v1, 0x3

    const v4, 0x3e99999a    # 0.3f

    .line 639
    new-array v0, v1, [[I

    .line 640
    new-array v1, v1, [I

    .line 641
    const/4 v2, 0x0

    .line 644
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->a:[I

    aput-object v3, v0, v2

    .line 645
    const v3, 0x3dcccccd    # 0.1f

    invoke-static {p1, v5, v3}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 646
    const/4 v2, 0x1

    .line 648
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->e:[I

    aput-object v3, v0, v2

    .line 649
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3, v4}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 650
    const/4 v2, 0x2

    .line 653
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->h:[I

    aput-object v3, v0, v2

    .line 654
    invoke-static {p1, v5, v4}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v1, v2

    .line 657
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    .prologue
    .line 854
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 855
    :cond_4
    const/4 v0, 0x0

    .line 858
    :goto_5
    return-object v0

    .line 857
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 858
    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    goto :goto_5
.end method

.method public static get()Landroid/support/v7/widget/AppCompatDrawableManager;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-nez v0, :cond_10

    .line 80
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 81
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V

    .line 83
    :cond_10
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    return-object v0
.end method

.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 384
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;

    .line 386
    if-nez v0, :cond_11

    .line 387
    monitor-exit v3

    move-object v0, v2

    .line 402
    :goto_10
    return-object v0

    .line 390
    :cond_11
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 391
    if-eqz v1, :cond_31

    .line 393
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 394
    if-eqz v1, :cond_2e

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    monitor-exit v3

    goto :goto_10

    .line 401
    :catchall_2b
    move-exception v0

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v0

    .line 398
    :cond_2e
    :try_start_2e
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->b(J)V

    .line 401
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_2b

    move-object v0, v2

    .line 402
    goto :goto_10
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    .prologue
    .line 863
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 865
    if-nez v0, :cond_12

    .line 867
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 868
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 871
    :cond_12
    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_18

    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 552
    if-eqz v0, :cond_16

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 554
    :goto_15
    return-object v0

    :cond_16
    move-object v0, v1

    .line 552
    goto :goto_15

    :cond_18
    move-object v0, v1

    .line 554
    goto :goto_15
.end method

.method private static installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    const/16 v1, 0x17

    if-ge v0, v1, :cond_21

    .line 91
    const-string/jumbo v1, "vector"

    new-instance v2, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>(Landroid/support/v7/widget/AppCompatDrawableManager$1;)V

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 93
    const/16 v1, 0xb

    if-lt v0, v1, :cond_21

    .line 95
    const-string/jumbo v0, "animated-vector"

    new-instance v1, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;

    invoke-direct {v1, v3}, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;-><init>(Landroid/support/v7/widget/AppCompatDrawableManager$1;)V

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 98
    :cond_21
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 882
    instance-of v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_15

    const-string/jumbo v0, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_30

    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    const-string/jumbo v2, "appcompat_skip_skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    if-eqz v0, :cond_37

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_37

    :cond_2e
    move-object v0, v1

    .line 379
    :cond_2f
    :goto_2f
    return-object v0

    .line 313
    :cond_30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    .line 316
    :cond_37
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_42

    .line 317
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 319
    :cond_42
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p2, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 323
    invoke-static {v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 325
    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_57

    move-object v0, v1

    .line 332
    goto :goto_2f

    .line 335
    :cond_57
    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8f

    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, ".xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 338
    :try_start_6a
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 339
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 341
    :cond_72
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_7a

    if-ne v0, v7, :cond_72

    .line 345
    :cond_7a
    if-eq v0, v8, :cond_9b

    .line 346
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_85} :catch_85

    .line 367
    :catch_85
    move-exception v0

    .line 368
    const-string/jumbo v2, "AppCompatDrawableManager"

    const-string/jumbo v3, "Exception while inflating drawable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8f
    move-object v0, v1

    .line 371
    :goto_90
    if-nez v0, :cond_2f

    .line 374
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    const-string/jumbo v2, "appcompat_skip_skip"

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2f

    .line 349
    :cond_9b
    :try_start_9b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v7, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 354
    iget-object v7, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 355
    if-eqz v0, :cond_b6

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-interface {v0, p1, v3, v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 359
    :cond_b6
    if-eqz v1, :cond_c3

    .line 361
    iget v0, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 362
    invoke-direct {p0, p1, v4, v5, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_c0} :catch_85

    move-result v0

    if-eqz v0, :cond_c3

    :cond_c3
    move-object v0, v1

    .line 369
    goto :goto_90

    :cond_c5
    move-object v0, v1

    .line 379
    goto/16 :goto_2f
.end method

.method private removeDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_11

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_11
    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .prologue
    .line 875
    invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 876
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 878
    :cond_a
    if-nez p2, :cond_e

    sget-object p2, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :cond_e
    invoke-static {p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 879
    return-void
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 11

    .prologue
    const v5, 0x102000f

    const v4, 0x102000d

    const/high16 v1, 0x1020000

    .line 254
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_29

    .line 257
    invoke-static {p4}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 258
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 260
    :cond_18
    invoke-static {p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 261
    invoke-static {p4, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 264
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_28

    .line 266
    invoke-static {p4, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 294
    :cond_28
    :goto_28
    return-object p4

    .line 268
    :cond_29
    sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I

    if-ne p2, v0, :cond_5e

    move-object v0, p4

    .line 269
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 270
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 272
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 274
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_28

    .line 276
    :cond_5e
    sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v0, :cond_66

    sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v0, :cond_97

    :cond_66
    move-object v0, p4

    .line 278
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 279
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 284
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_28

    .line 287
    :cond_97
    invoke-static {p1, p2, p4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 288
    if-nez v0, :cond_28

    if-eqz p3, :cond_28

    .line 291
    const/4 p4, 0x0

    goto :goto_28
.end method

.method public static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .registers 5

    .prologue
    .line 830
    invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_16

    .line 832
    const-string/jumbo v0, "AppCompatDrawableManager"

    const-string/jumbo v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_15
    :goto_15
    return-void

    .line 836
    :cond_16
    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->d:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->c:Z

    if-eqz v0, :cond_40

    .line 837
    :cond_1e
    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->d:Z

    if-eqz v0, :cond_3b

    iget-object v0, p1, Landroid/support/v7/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    :goto_24
    iget-boolean v1, p1, Landroid/support/v7/widget/TintInfo;->c:Z

    if-eqz v1, :cond_3d

    iget-object v1, p1, Landroid/support/v7/widget/TintInfo;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_2a
    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 845
    :goto_31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_15

    .line 848
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_15

    .line 837
    :cond_3b
    const/4 v0, 0x0

    goto :goto_24

    :cond_3d
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2a

    .line 842
    :cond_40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_31
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 10

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 436
    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 441
    sget-object v2, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v2, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 442
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    .line 457
    :goto_13
    if-eqz v5, :cond_62

    .line 458
    invoke-static {p2}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 459
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 462
    :cond_1f
    invoke-static {p0, v4}, Landroid/support/v7/widget/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    .line 463
    invoke-static {v1, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 465
    if-eq v2, v3, :cond_2f

    .line 466
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 476
    :cond_2f
    :goto_2f
    return v0

    .line 444
    :cond_30
    sget-object v2, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v2, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 445
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    .line 446
    goto :goto_13

    .line 447
    :cond_3f
    sget-object v2, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v2, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 448
    const v2, 0x1010031

    .line 450
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v5, v0

    move-object v6, v4

    move v4, v2

    move v2, v3

    goto :goto_13

    .line 451
    :cond_51
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v2, :cond_64

    .line 452
    const v4, 0x1010030

    .line 454
    const v2, 0x42233333    # 40.8f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object v6, v5

    move v5, v0

    goto :goto_13

    :cond_62
    move v0, v1

    .line 476
    goto :goto_2f

    :cond_64
    move v2, v3

    move v4, v1

    move-object v6, v5

    move v5, v1

    goto :goto_13
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    if-nez v0, :cond_a

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    :cond_a
    if-nez v0, :cond_10

    .line 202
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    :cond_10
    if-eqz v0, :cond_16

    .line 207
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    :cond_16
    if-eqz v0, :cond_1b

    .line 211
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_1b
    return-object v0
.end method

.method public final getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5

    .prologue
    .line 513
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 515
    if-nez v0, :cond_13

    .line 517
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v1, :cond_14

    .line 518
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 542
    :cond_e
    :goto_e
    if-eqz v0, :cond_13

    .line 543
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 546
    :cond_13
    return-object v0

    .line 519
    :cond_14
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_1d

    .line 520
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 521
    :cond_1d
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_26

    .line 522
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 523
    :cond_26
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v1, :cond_2f

    .line 524
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 525
    :cond_2f
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_38

    .line 526
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 527
    :cond_38
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_41

    .line 528
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 529
    :cond_41
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_49

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_4e

    .line 531
    :cond_49
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 532
    :cond_4e
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 533
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 534
    :cond_5d
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 535
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 536
    :cond_6a
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 537
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    .line 538
    :cond_77
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_e

    .line 539
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e
.end method

.method final getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 4

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 504
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, v1, :cond_7

    .line 505
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 508
    :cond_7
    return-object v0
.end method

.method public final onDrawableLoadedFromResources(Landroid/content/Context;Landroid/support/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 424
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 425
    if-nez v0, :cond_a

    .line 426
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 428
    :cond_a
    if-eqz v0, :cond_12

    .line 429
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 431
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
