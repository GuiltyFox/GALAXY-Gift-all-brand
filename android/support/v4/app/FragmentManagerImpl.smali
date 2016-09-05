.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static final B:Landroid/view/animation/Interpolator;

.field static final C:Landroid/view/animation/Interpolator;

.field static final D:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static r:Ljava/lang/reflect/Field;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Landroid/support/v4/app/FragmentHostCallback;

.field p:Landroid/support/v4/app/FragmentContainer;

.field q:Landroid/support/v4/app/Fragment;

.field s:Z

.field t:Z

.field u:Z

.field v:Ljava/lang/String;

.field w:Z

.field x:Landroid/os/Bundle;

.field y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 406
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    .line 409
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->b:Z

    .line 502
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    .line 830
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->A:Landroid/view/animation/Interpolator;

    .line 831
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->B:Landroid/view/animation/Interpolator;

    .line 832
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->C:Landroid/view/animation/Interpolator;

    .line 833
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->D:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    .line 511
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    .line 512
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    .line 514
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->z:Ljava/lang/Runnable;

    .line 2335
    return-void
.end method

.method static a(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .registers 7

    .prologue
    .line 853
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 854
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 855
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 856
    return-object v0
.end method

.method static a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .registers 15

    .prologue
    .line 839
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 840
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 842
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 843
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 844
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 845
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 846
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 847
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 848
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 849
    return-object v9
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .registers 7

    .prologue
    .line 543
    const-string/jumbo v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 547
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_3c

    .line 549
    :try_start_24
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    const-string/jumbo v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_31

    .line 560
    :goto_30
    throw p1

    .line 550
    :catch_31
    move-exception v0

    .line 551
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 555
    :cond_3c
    :try_start_3c
    const-string/jumbo v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_30

    .line 556
    :catch_47
    move-exception v0

    .line 557
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method static a(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .registers 4

    .prologue
    .line 536
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static a(Landroid/view/animation/Animation;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 522
    instance-of v0, p0, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_8

    move v1, v2

    .line 532
    :cond_7
    :goto_7
    return v1

    .line 524
    :cond_8
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_7

    .line 525
    check-cast p0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    move v0, v1

    .line 526
    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 527
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_23

    move v1, v2

    .line 528
    goto :goto_7

    .line 526
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static b(IZ)I
    .registers 3

    .prologue
    .line 2222
    const/4 v0, -0x1

    .line 2223
    sparse-switch p0, :sswitch_data_18

    .line 2234
    :goto_4
    return v0

    .line 2225
    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x2

    goto :goto_4

    .line 2228
    :sswitch_b
    if-eqz p1, :cond_f

    const/4 v0, 0x3

    goto :goto_4

    :cond_f
    const/4 v0, 0x4

    goto :goto_4

    .line 2231
    :sswitch_11
    if-eqz p1, :cond_15

    const/4 v0, 0x5

    goto :goto_4

    :cond_15
    const/4 v0, 0x6

    goto :goto_4

    .line 2223
    nop

    :sswitch_data_18
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_11
        0x2002 -> :sswitch_b
    .end sparse-switch
.end method

.method private b(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 7

    .prologue
    .line 938
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 960
    :cond_4
    :goto_4
    return-void

    .line 941
    :cond_5
    invoke-static {p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 942
    const/4 v1, 0x0

    .line 944
    :try_start_c
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    if-nez v0, :cond_21

    .line 945
    const-class v0, Landroid/view/animation/Animation;

    const-string/jumbo v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    .line 946
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 948
    :cond_21
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_29} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_29} :catch_3e

    .line 957
    :goto_29
    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v1, p1, p2, v0}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_4

    .line 949
    :catch_32
    move-exception v0

    .line 950
    const-string/jumbo v2, "FragmentManager"

    const-string/jumbo v3, "No field with the name mListener is found in Animation class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 953
    goto :goto_29

    .line 951
    :catch_3e
    move-exception v0

    .line 952
    const-string/jumbo v2, "FragmentManager"

    const-string/jumbo v3, "Cannot access Animation\'s mListener field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_29
.end method

.method public static c(I)I
    .registers 2

    .prologue
    .line 2198
    const/4 v0, 0x0

    .line 2199
    sparse-switch p0, :sswitch_data_e

    .line 2210
    :goto_4
    return v0

    .line 2201
    :sswitch_5
    const/16 v0, 0x2002

    .line 2202
    goto :goto_4

    .line 2204
    :sswitch_8
    const/16 v0, 0x1001

    .line 2205
    goto :goto_4

    .line 2207
    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    .line 2199
    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method private w()V
    .registers 4

    .prologue
    .line 1492
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    if-eqz v0, :cond_d

    .line 1493
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1496
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 1497
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1500
    :cond_2d
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/BackStackRecord;)I
    .registers 6

    .prologue
    .line 1529
    monitor-enter p0

    .line 1530
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4e

    .line 1531
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 1532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    .line 1534
    :cond_18
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1535
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_47

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_47
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    monitor-exit p0

    .line 1543
    :goto_4d
    return v0

    .line 1540
    :cond_4e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1541
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_8b

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_8b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1543
    monitor-exit p0

    goto :goto_4d

    .line 1545
    :catchall_92
    move-exception v0

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_92

    throw v0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 5

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 1438
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_22

    .line 1439
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1440
    if-eqz v0, :cond_1e

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1e

    .line 1454
    :cond_1d
    :goto_1d
    return-object v0

    .line 1438
    :cond_1e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 1445
    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 1447
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2f
    if-ltz v1, :cond_43

    .line 1448
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1449
    if-eqz v0, :cond_3f

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_1d

    .line 1447
    :cond_3f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2f

    .line 1454
    :cond_43
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 663
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 664
    if-ne v1, v0, :cond_9

    .line 665
    const/4 v0, 0x0

    .line 676
    :cond_8
    :goto_8
    return-object v0

    .line 667
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_38

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 671
    :cond_38
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 672
    if-nez v0, :cond_8

    .line 673
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    goto :goto_8
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5

    .prologue
    .line 1458
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 1460
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_28

    .line 1461
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1462
    if-eqz v0, :cond_24

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1476
    :cond_23
    :goto_23
    return-object v0

    .line 1460
    :cond_24
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 1467
    :cond_28
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_4f

    .line 1469
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_37
    if-ltz v1, :cond_4f

    .line 1470
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1471
    if-eqz v0, :cond_4b

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1469
    :cond_4b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_37

    .line 1476
    :cond_4f
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public a()Landroid/support/v4/app/FragmentTransaction;
    .registers 2

    .prologue
    .line 565
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 2239
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v4

    .line 2328
    :goto_e
    return-object v0

    .line 2243
    :cond_f
    const-string/jumbo v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2244
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2245
    if-nez v0, :cond_19f

    .line 2246
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2248
    :goto_23
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 2249
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2250
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2252
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    move-object v0, v4

    .line 2255
    goto :goto_e

    .line 2258
    :cond_3d
    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 2259
    :goto_43
    if-ne v1, v5, :cond_6d

    if-ne v7, v5, :cond_6d

    if-nez v8, :cond_6d

    .line 2260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    move v1, v3

    .line 2258
    goto :goto_43

    .line 2267
    :cond_6d
    if-eq v7, v5, :cond_116

    invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2268
    :goto_73
    if-nez v0, :cond_7b

    if-eqz v8, :cond_7b

    .line 2269
    invoke-virtual {p0, v8}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2271
    :cond_7b
    if-nez v0, :cond_83

    if-eq v1, v5, :cond_83

    .line 2272
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2275
    :cond_83
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v4, :cond_bb

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCreateView: id=0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " fname="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " existing="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_bb
    if-nez v0, :cond_11b

    .line 2279
    invoke-static {p3, v6}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 2280
    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 2281
    if-eqz v7, :cond_119

    move v0, v7

    :goto_c6
    iput v0, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 2282
    iput v1, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2283
    iput-object v8, v4, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 2284
    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2285
    iput-object p0, v4, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2286
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, v4, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2287
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p4, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2288
    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    .line 2312
    :goto_e3
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-ge v0, v2, :cond_182

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_182

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2313
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2318
    :goto_f1
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_187

    .line 2319
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_116
    move-object v0, v4

    .line 2267
    goto/16 :goto_73

    :cond_119
    move v0, v1

    .line 2281
    goto :goto_c6

    .line 2290
    :cond_11b
    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v4, :cond_16a

    .line 2293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2300
    :cond_16a
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2301
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2305
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_17f

    .line 2306
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_17f
    move-object v1, v0

    goto/16 :goto_e3

    .line 2315
    :cond_182
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_f1

    .line 2322
    :cond_187
    if-eqz v7, :cond_18e

    .line 2323
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 2325
    :cond_18e
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19b

    .line 2326
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2328
    :cond_19b
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_e

    :cond_19f
    move-object v6, v0

    goto/16 :goto_23
.end method

.method a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .registers 11

    .prologue
    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 861
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_10

    .line 915
    :cond_f
    :goto_f
    return-object v0

    .line 867
    :cond_10
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_22

    .line 868
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 869
    if-nez v0, :cond_f

    .line 874
    :cond_22
    if-nez p2, :cond_26

    move-object v0, v1

    .line 875
    goto :goto_f

    .line 878
    :cond_26
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->b(IZ)I

    move-result v0

    .line 879
    if-gez v0, :cond_2e

    move-object v0, v1

    .line 880
    goto :goto_f

    .line 883
    :cond_2e
    packed-switch v0, :pswitch_data_8e

    .line 898
    if-nez p4, :cond_41

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->e()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 899
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->f()I

    move-result p4

    .line 901
    :cond_41
    if-nez p4, :cond_8c

    move-object v0, v1

    .line 902
    goto :goto_f

    .line 885
    :pswitch_45
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f900000    # 1.125f

    invoke-static {v0, v1, v3, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 887
    :pswitch_52
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v5, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 889
    :pswitch_5d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v3, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 891
    :pswitch_68
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3f89999a    # 1.075f

    invoke-static {v0, v3, v1, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 893
    :pswitch_76
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 895
    :pswitch_81
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    :cond_8c
    move-object v0, v1

    .line 915
    goto :goto_f

    .line 883
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_52
        :pswitch_5d
        :pswitch_68
        :pswitch_76
        :pswitch_81
    .end packed-switch
.end method

.method public a(II)V
    .registers 6

    .prologue
    .line 607
    if-gez p1, :cond_1c

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_1c
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 615
    return-void
.end method

.method a(IIIZ)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 1238
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 1239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_10
    if-nez p4, :cond_17

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-ne v0, p1, :cond_17

    .line 1268
    :cond_16
    :goto_16
    return-void

    .line 1246
    :cond_17
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    .line 1247
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    move v6, v5

    move v7, v5

    .line 1249
    :goto_1f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_49

    .line 1250
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1251
    if-eqz v1, :cond_63

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1252
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1253
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_63

    .line 1254
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    .line 1249
    :goto_44
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1f

    .line 1259
    :cond_49
    if-nez v7, :cond_4e

    .line 1260
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->f()V

    .line 1263
    :cond_4e
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_16

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    .line 1264
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->d()V

    .line 1265
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    goto :goto_16

    :cond_63
    move v1, v7

    goto :goto_44
.end method

.method public a(ILandroid/support/v4/app/BackStackRecord;)V
    .registers 7

    .prologue
    .line 1549
    monitor-enter p0

    .line 1550
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    .line 1553
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1554
    if-ge p1, v0, :cond_44

    .line 1555
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_3d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1570
    :goto_42
    monitor-exit p0

    .line 1571
    return-void

    .line 1558
    :cond_44
    :goto_44
    if-ge v0, p1, :cond_81

    .line 1559
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1560
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_57

    .line 1561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    .line 1563
    :cond_57
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_75

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_75
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 1567
    :cond_81
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_aa

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_aa
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 1570
    :catchall_b0
    move-exception v0

    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_1 .. :try_end_b2} :catchall_b0

    throw v0
.end method

.method a(IZ)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1234
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 1235
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 2090
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 2091
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2092
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2093
    if-eqz v0, :cond_1b

    .line 2094
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2091
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2098
    :cond_1f
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 7

    .prologue
    .line 654
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_27

    .line 655
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 658
    :cond_27
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 659
    return-void
.end method

.method a(Landroid/os/Parcelable;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1917
    if-nez p1, :cond_5

    .line 2025
    :cond_4
    :goto_4
    return-void

    .line 1918
    :cond_5
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1919
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_4

    .line 1923
    if-eqz p2, :cond_70

    move v1, v2

    .line 1924
    :goto_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_70

    .line 1925
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1926
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v3, :cond_38

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAllState: re-attaching retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_38
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v3, v3, v4

    .line 1928
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1929
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1930
    iput v2, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1931
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1932
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1933
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1934
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v4, :cond_6c

    .line 1935
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1936
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string/jumbo v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1938
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1924
    :cond_6c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 1945
    :cond_70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    .line 1946
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_83

    .line 1947
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_83
    move v0, v2

    .line 1949
    :goto_84
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_102

    .line 1950
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1951
    if-eqz v1, :cond_ca

    .line 1952
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1953
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v4, :cond_c0

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreAllState: active #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_c0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
    iput-object v7, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1949
    :goto_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 1960
    :cond_ca
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_da

    .line 1962
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    .line 1964
    :cond_da
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_f8

    const-string/jumbo v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAllState: avail #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_f8
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    .line 1970
    :cond_102
    if-eqz p2, :cond_159

    move v3, v2

    .line 1971
    :goto_105
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_159

    .line 1972
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1973
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v1, :cond_12b

    .line 1974
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_12f

    .line 1975
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1971
    :cond_12b
    :goto_12b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_105

    .line 1977
    :cond_12f
    const-string/jumbo v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Re-attaching retained fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_12b

    .line 1986
    :cond_159
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_1e1

    .line 1987
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    move v1, v2

    .line 1988
    :goto_168
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1e3

    .line 1989
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1990
    if-nez v0, :cond_19b

    .line 1991
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No instantiated fragment for index #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 1994
    :cond_19b
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1995
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v3, :cond_1c7

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAllState: added #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_1c7
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 1997
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_1d8
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_168

    .line 2002
    :cond_1e1
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 2006
    :cond_1e3
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_259

    .line 2007
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    move v0, v2

    .line 2008
    :goto_1f2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2009
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v1

    .line 2010
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v3, :cond_248

    .line 2011
    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAllState: back stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/support/v4/app/BackStackRecord;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    new-instance v3, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 2014
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2015
    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2017
    :cond_248
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->p:I

    if-ltz v3, :cond_256

    .line 2019
    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->p:I

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(ILandroid/support/v4/app/BackStackRecord;)V

    .line 2008
    :cond_256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f2

    .line 2023
    :cond_259
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    goto/16 :goto_4
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 919
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_c

    .line 920
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    if-eqz v0, :cond_d

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->w:Z

    .line 928
    :cond_c
    :goto_c
    return-void

    .line 925
    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 926
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_c
.end method

.method public a(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1338
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_2d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_5c

    move v0, v1

    .line 1340
    :goto_34
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_3a

    if-eqz v0, :cond_5b

    .line 1341
    :cond_3a
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_43

    .line 1342
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1344
    :cond_43
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_4d

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_4d

    .line 1345
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1347
    :cond_4d
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1348
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1349
    if-eqz v0, :cond_5e

    move v2, v5

    :goto_54
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1352
    :cond_5b
    return-void

    :cond_5c
    move v0, v5

    .line 1339
    goto :goto_34

    :cond_5e
    move v2, v1

    .line 1349
    goto :goto_54
.end method

.method a(Landroid/support/v4/app/Fragment;IIIZ)V
    .registers 16

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 965
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_10

    :cond_d
    if-le p2, v5, :cond_10

    move p2, v5

    .line 968
    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_1a

    .line 970
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 974
    :cond_1a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_25

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v9, :cond_25

    if-le p2, v6, :cond_25

    move p2, v6

    .line 977
    :cond_25
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, p2, :cond_2c0

    .line 981
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_32

    .line 1227
    :cond_31
    :goto_31
    return-void

    .line 984
    :cond_32
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_40

    .line 989
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 990
    iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 992
    :cond_40
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_42e

    .line 1222
    :cond_45
    :goto_45
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-eq v0, p2, :cond_31

    .line 1223
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not updated inline; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_31

    .line 994
    :pswitch_85
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_a3

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_a3
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_ef

    .line 996
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 997
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 999
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1001
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_db

    .line 1002
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 1005
    :cond_db
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1007
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_ef

    .line 1008
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1009
    if-le p2, v6, :cond_ef

    move p2, v6

    .line 1014
    :cond_ef
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1015
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1016
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_131

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    :goto_ff
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1018
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1019
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1020
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_138

    .line 1021
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_131
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->k()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v0

    goto :goto_ff

    .line 1024
    :cond_138
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_141

    .line 1025
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->b(Landroid/support/v4/app/Fragment;)V

    .line 1028
    :cond_141
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_14a

    .line 1029
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1031
    :cond_14a
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1032
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_183

    .line 1036
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1038
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2af

    .line 1039
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1040
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2a5

    .line 1041
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 1045
    :goto_171
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_17c

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    :cond_17c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1052
    :cond_183
    :goto_183
    :pswitch_183
    if-le p2, v5, :cond_259

    .line 1053
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1a3

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_1a3
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_249

    .line 1056
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_42a

    .line 1057
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentContainer;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1058
    if-nez v0, :cond_1fd

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v1, :cond_1fd

    .line 1059
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No view found for id 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v8, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") for fragment "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 1066
    :cond_1fd
    :goto_1fd
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1067
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1069
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2bd

    .line 1070
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1071
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2b3

    .line 1072
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 1076
    :goto_220
    if-eqz v0, :cond_237

    .line 1077
    invoke-virtual {p0, p1, p3, v5, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1079
    if-eqz v1, :cond_232

    .line 1080
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1081
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1083
    :cond_232
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1085
    :cond_237
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_242

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    :cond_242
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1092
    :cond_249
    :goto_249
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1093
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_257

    .line 1094
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1096
    :cond_257
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1100
    :cond_259
    :pswitch_259
    if-le p2, v6, :cond_27c

    .line 1101
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_279

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_279
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 1105
    :cond_27c
    :pswitch_27c
    if-le p2, v9, :cond_45

    .line 1106
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_29c

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_29c
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1108
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1109
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_45

    .line 1043
    :cond_2a5
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_171

    .line 1048
    :cond_2af
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_183

    .line 1074
    :cond_2b3
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_220

    .line 1088
    :cond_2bd
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_249

    .line 1112
    :cond_2c0
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, p2, :cond_45

    .line 1113
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_43c

    goto/16 :goto_45

    .line 1172
    :cond_2cb
    :goto_2cb
    :pswitch_2cb
    if-ge p2, v5, :cond_45

    .line 1173
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    if-eqz v0, :cond_2dc

    .line 1174
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_2dc

    .line 1181
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1182
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1183
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1186
    :cond_2dc
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_3c0

    .line 1191
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move p2, v5

    .line 1192
    goto/16 :goto_45

    .line 1115
    :pswitch_2e5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_309

    .line 1116
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_306

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_306
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1120
    :cond_309
    :pswitch_309
    if-ge p2, v9, :cond_32c

    .line 1121
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_329

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_329
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1125
    :cond_32c
    :pswitch_32c
    if-ge p2, v6, :cond_34f

    .line 1126
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_34c

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_34c
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 1130
    :cond_34f
    :pswitch_34f
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2cb

    .line 1131
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_370

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_370
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_383

    .line 1135
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_383

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_383

    .line 1136
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;)V

    .line 1139
    :cond_383
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1140
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3b8

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3b8

    .line 1142
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-lez v0, :cond_427

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    if-nez v0, :cond_427

    .line 1143
    invoke-virtual {p0, p1, p3, v3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1146
    :goto_39a
    if-eqz v0, :cond_3b1

    .line 1148
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1149
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1150
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1151
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$5;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1163
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1165
    :cond_3b1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1167
    :cond_3b8
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1168
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1169
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_2cb

    .line 1194
    :cond_3c0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_3de

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_3de
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_40f

    .line 1196
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1201
    :goto_3e5
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1202
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1203
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_412

    .line 1204
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_40f
    iput v3, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_3e5

    .line 1207
    :cond_412
    if-nez p5, :cond_45

    .line 1208
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_41d

    .line 1209
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_45

    .line 1211
    :cond_41d
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1212
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1213
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1214
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_45

    :cond_427
    move-object v0, v7

    goto/16 :goto_39a

    :cond_42a
    move-object v0, v7

    goto/16 :goto_1fd

    .line 992
    nop

    :pswitch_data_42e
    .packed-switch 0x0
        :pswitch_85
        :pswitch_183
        :pswitch_259
        :pswitch_259
        :pswitch_27c
    .end packed-switch

    .line 1113
    :pswitch_data_43c
    .packed-switch 0x1
        :pswitch_2cb
        :pswitch_34f
        :pswitch_32c
        :pswitch_309
        :pswitch_2e5
    .end packed-switch
.end method

.method public a(Landroid/support/v4/app/Fragment;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1316
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 1319
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_2a
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;)V

    .line 1321
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_6c

    .line 1322
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1323
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :cond_53
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1327
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1328
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_67

    .line 1329
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1331
    :cond_67
    if-eqz p2, :cond_6c

    .line 1332
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;)V

    .line 1335
    :cond_6c
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .registers 6

    .prologue
    .line 2029
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2030
    :cond_d
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    .line 2031
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    .line 2032
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    .line 2033
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .registers 5

    .prologue
    .line 1510
    if-nez p2, :cond_5

    .line 1511
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->w()V

    .line 1513
    :cond_5
    monitor-enter p0

    .line 1514
    :try_start_6
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1a

    .line 1515
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1525
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0

    .line 1517
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_25

    .line 1518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    .line 1520
    :cond_25
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 1522
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1523
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1525
    :cond_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_17

    .line 1526
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 722
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_64

    .line 723
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 724
    if-lez v4, :cond_64

    .line 725
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 728
    :goto_3c
    if-ge v2, v4, :cond_64

    .line 729
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 730
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 731
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 732
    if-eqz v0, :cond_60

    .line 733
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 728
    :cond_60
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3c

    .line 739
    :cond_64
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_a1

    .line 740
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 741
    if-lez v4, :cond_a1

    .line 742
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 743
    :goto_7a
    if-ge v2, v4, :cond_a1

    .line 744
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 745
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 746
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7a

    .line 751
    :cond_a1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_de

    .line 752
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 753
    if-lez v4, :cond_de

    .line 754
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 755
    :goto_b7
    if-ge v2, v4, :cond_de

    .line 756
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 757
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 758
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b7

    .line 763
    :cond_de
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_11e

    .line 764
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 765
    if-lez v4, :cond_11e

    .line 766
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 767
    :goto_f4
    if-ge v2, v4, :cond_11e

    .line 768
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 769
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 770
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 767
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f4

    .line 776
    :cond_11e
    monitor-enter p0

    .line 777
    :try_start_11f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_158

    .line 778
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 779
    if-lez v3, :cond_158

    .line 780
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 781
    :goto_135
    if-ge v2, v3, :cond_158

    .line 782
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 783
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 784
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 781
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_135

    .line 789
    :cond_158
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_17a

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17a

    .line 790
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    :cond_17a
    monitor-exit p0
    :try_end_17b
    .catchall {:try_start_11f .. :try_end_17b} :catchall_1b3

    .line 795
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b6

    .line 796
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 797
    if-lez v2, :cond_1b6

    .line 798
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    :goto_190
    if-ge v1, v2, :cond_1b6

    .line 800
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 801
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 802
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 799
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_190

    .line 793
    :catchall_1b3
    move-exception v0

    :try_start_1b4
    monitor-exit p0
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    throw v0

    .line 807
    :cond_1b6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 809
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1ed

    .line 811
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 813
    :cond_1ed
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 814
    const-string/jumbo v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 815
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 816
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    if-eqz v0, :cond_223

    .line 817
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 820
    :cond_223
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    if-eqz v0, :cond_235

    .line 821
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    :cond_235
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_257

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_257

    .line 825
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    :cond_257
    return-void
.end method

.method a(Landroid/os/Handler;Ljava/lang/String;II)Z
    .registers 16

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1658
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 1727
    :cond_7
    :goto_7
    return v3

    .line 1661
    :cond_8
    if-nez p2, :cond_37

    if-gez p3, :cond_37

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_37

    .line 1662
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1663
    if-ltz v0, :cond_7

    .line 1666
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1667
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1668
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1669
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1670
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/support/v4/app/BackStackRecord;->a(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    .line 1671
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->h()V

    :goto_35
    move v3, v2

    .line 1727
    goto :goto_7

    .line 1673
    :cond_37
    const/4 v0, -0x1

    .line 1674
    if-nez p2, :cond_3c

    if-ltz p3, :cond_8b

    .line 1677
    :cond_3c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1678
    :goto_44
    if-ltz v1, :cond_5a

    .line 1679
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1680
    if-eqz p2, :cond_81

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1688
    :cond_5a
    if-ltz v1, :cond_7

    .line 1691
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    .line 1692
    add-int/lit8 v1, v1, -0x1

    .line 1694
    :goto_62
    if-ltz v1, :cond_8a

    .line 1695
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1696
    if-eqz p2, :cond_78

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    :cond_78
    if-ltz p3, :cond_8a

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->p:I

    if-ne p3, v0, :cond_8a

    .line 1698
    :cond_7e
    add-int/lit8 v1, v1, -0x1

    .line 1699
    goto :goto_62

    .line 1683
    :cond_81
    if-ltz p3, :cond_87

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->p:I

    if-eq p3, v0, :cond_5a

    .line 1686
    :cond_87
    add-int/lit8 v1, v1, -0x1

    .line 1687
    goto :goto_44

    :cond_8a
    move v0, v1

    .line 1705
    :cond_8b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1708
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a2
    if-le v1, v0, :cond_b0

    .line 1711
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    add-int/lit8 v1, v1, -0x1

    goto :goto_a2

    .line 1713
    :cond_b0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 1714
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 1715
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v1, v3

    .line 1716
    :goto_c1
    if-gt v1, v7, :cond_d0

    .line 1717
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1716
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c1

    :cond_d0
    move-object v5, v4

    move v4, v3

    .line 1720
    :goto_d2
    if-gt v4, v7, :cond_10a

    .line 1721
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_f6

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Popping back stack state: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_f6
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    if-ne v4, v7, :cond_108

    move v1, v2

    :goto_ff
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/support/v4/app/BackStackRecord;->a(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v1

    .line 1720
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v1

    goto :goto_d2

    :cond_108
    move v1, v3

    .line 1722
    goto :goto_ff

    .line 1725
    :cond_10a
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->h()V

    goto/16 :goto_35
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2144
    .line 2145
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    move v1, v0

    move v2, v0

    .line 2146
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 2147
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2148
    if-eqz v0, :cond_20

    .line 2149
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2150
    const/4 v2, 0x1

    .line 2146
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_24
    move v2, v0

    .line 2155
    :cond_25
    return v2
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 2112
    .line 2113
    const/4 v1, 0x0

    .line 2114
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    move v3, v4

    move v2, v4

    .line 2115
    :goto_8
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_32

    .line 2116
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2117
    if-eqz v0, :cond_2b

    .line 2118
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2119
    const/4 v2, 0x1

    .line 2120
    if-nez v1, :cond_28

    .line 2121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2123
    :cond_28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    move v0, v2

    .line 2115
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_8

    :cond_31
    move v2, v4

    .line 2129
    :cond_32
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    .line 2130
    :goto_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_54

    .line 2131
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2132
    if-eqz v1, :cond_4e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 2133
    :cond_4e
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 2130
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 2138
    :cond_54
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    .line 2140
    return v2
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2159
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    move v1, v2

    .line 2160
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2161
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2162
    if-eqz v0, :cond_20

    .line 2163
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2164
    const/4 v2, 0x1

    .line 2169
    :cond_1f
    return v2

    .line 2160
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 1481
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_26

    .line 1482
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1483
    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1488
    :goto_21
    return-object v0

    .line 1481
    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 1488
    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public b(I)V
    .registers 5

    .prologue
    .line 1574
    monitor-enter p0

    .line 1575
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1576
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    .line 1579
    :cond_12
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_30
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    monitor-exit p0

    .line 1582
    return-void

    .line 1581
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method b(Landroid/support/v4/app/BackStackRecord;)V
    .registers 3

    .prologue
    .line 1649
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    .line 1652
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->h()V

    .line 1654
    return-void
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1230
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1231
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;II)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 1355
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_1f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_52

    .line 1357
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1358
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_41

    .line 1359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_3a

    .line 1362
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1363
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1365
    :cond_3a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    :cond_41
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4f

    .line 1368
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1370
    :cond_4f
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1372
    :cond_52
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .registers 4

    .prologue
    .line 2187
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 2188
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2189
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2190
    if-eqz v0, :cond_1b

    .line 2191
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2188
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2195
    :cond_1f
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2173
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    move v1, v2

    .line 2174
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2175
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2176
    if-eqz v0, :cond_20

    .line 2177
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2178
    const/4 v2, 0x1

    .line 2183
    :cond_1f
    return v2

    .line 2174
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public c()V
    .registers 3

    .prologue
    .line 575
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 580
    return-void
.end method

.method c(Landroid/support/v4/app/Fragment;)V
    .registers 5

    .prologue
    .line 1282
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    .line 1298
    :cond_4
    :goto_4
    return-void

    .line 1286
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4b

    .line 1287
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    .line 1290
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1291
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    :goto_2c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1294
    :cond_4b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1295
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c
.end method

.method public c(Landroid/support/v4/app/Fragment;II)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1375
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_20
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_50

    .line 1377
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1378
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 1379
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1381
    if-eqz v0, :cond_3a

    .line 1382
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1383
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1385
    :cond_3a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    :cond_3f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4d

    .line 1388
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1390
    :cond_4d
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1392
    :cond_50
    return-void
.end method

.method d(Landroid/support/v4/app/Fragment;)V
    .registers 5

    .prologue
    .line 1301
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    .line 1313
    :goto_4
    return-void

    .line 1305
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_23

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1307
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_36

    .line 1308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    .line 1310
    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentHostCallback;->b(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    goto :goto_4
.end method

.method public d(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1395
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_20
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_64

    .line 1397
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1398
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_64

    .line 1400
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    .line 1401
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_4c

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_4c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1404
    :cond_51
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_5b

    .line 1405
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1407
    :cond_5b
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1408
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1411
    :cond_64
    return-void
.end method

.method public d()Z
    .registers 5

    .prologue
    .line 584
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->w()V

    .line 585
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->b()Z

    .line 586
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method e(Landroid/support/v4/app/Fragment;)V
    .registers 4

    .prologue
    .line 1750
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1763
    :cond_4
    :goto_4
    return-void

    .line 1753
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1754
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    .line 1758
    :goto_10
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1759
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1760
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1761
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    goto :goto_4

    .line 1756
    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_10
.end method

.method public e(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1414
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_20
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_8f

    .line 1416
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1417
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_8f

    .line 1418
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_35

    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 1421
    :cond_35
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1422
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1424
    :cond_57
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_75

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_75
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1427
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_86

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_86

    .line 1428
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1430
    :cond_86
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1433
    :cond_8f
    return-void
.end method

.method f(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1766
    .line 1768
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    if-nez v0, :cond_c

    .line 1769
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    .line 1771
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1772
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1773
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    .line 1774
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    .line 1777
    :goto_1d
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_24

    .line 1778
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;)V

    .line 1780
    :cond_24
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_37

    .line 1781
    if-nez v0, :cond_2f

    .line 1782
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1784
    :cond_2f
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1787
    :cond_37
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_4a

    .line 1788
    if-nez v0, :cond_42

    .line 1789
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1792
    :cond_42
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1795
    :cond_4a
    return-object v0

    :cond_4b
    move-object v0, v1

    goto :goto_1d
.end method

.method f()V
    .registers 3

    .prologue
    .line 1271
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1279
    :cond_4
    return-void

    .line 1273
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1274
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1275
    if-eqz v0, :cond_1c

    .line 1276
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;)V

    .line 1273
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public g()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1588
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    if-eqz v1, :cond_f

    .line 1589
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1592
    :cond_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_28

    .line 1593
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move v1, v2

    .line 1601
    :goto_29
    monitor-enter p0

    .line 1602
    :try_start_2a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5e

    .line 1603
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_9d

    .line 1624
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->w:Z

    if-eqz v0, :cond_ab

    move v3, v2

    move v4, v2

    .line 1626
    :goto_3d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a4

    .line 1627
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1628
    if-eqz v0, :cond_5a

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_5a

    .line 1629
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1626
    :cond_5a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3d

    .line 1606
    :cond_5e
    :try_start_5e
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1607
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_71

    .line 1608
    :cond_6d
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    .line 1610
    :cond_71
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1611
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1612
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1613
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_5e .. :try_end_89} :catchall_9d

    .line 1615
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    move v1, v2

    .line 1616
    :goto_8c
    if-ge v1, v3, :cond_a0

    .line 1617
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1618
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1616
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 1613
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v0

    .line 1620
    :cond_a0
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    move v1, v0

    .line 1622
    goto :goto_29

    .line 1632
    :cond_a4
    if-nez v4, :cond_ab

    .line 1633
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->w:Z

    .line 1634
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->f()V

    .line 1637
    :cond_ab
    return v1
.end method

.method h()V
    .registers 3

    .prologue
    .line 1641
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 1642
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 1643
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->a()V

    .line 1642
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1646
    :cond_1d
    return-void
.end method

.method i()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1731
    const/4 v1, 0x0

    .line 1732
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_58

    .line 1733
    const/4 v0, 0x0

    move v3, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_58

    .line 1734
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1735
    if-eqz v0, :cond_52

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v2, :cond_52

    .line 1736
    if-nez v1, :cond_24

    .line 1737
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    :cond_24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1741
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_56

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_32
    iput v2, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 1742
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v2, :cond_52

    const-string/jumbo v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retainNonConfig: keeping retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_52
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 1741
    :cond_56
    const/4 v2, -0x1

    goto :goto_32

    .line 1746
    :cond_58
    return-object v1
.end method

.method j()Landroid/os/Parcelable;
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1801
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 1803
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->b:Z

    if-eqz v0, :cond_c

    .line 1813
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 1816
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_19

    .line 1911
    :cond_18
    :goto_18
    return-object v3

    .line 1821
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1822
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    .line 1824
    :goto_23
    if-ge v5, v6, :cond_fe

    .line 1825
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1826
    if-eqz v0, :cond_1f4

    .line 1827
    iget v2, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_5c

    .line 1828
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 1835
    :cond_5c
    new-instance v2, Landroid/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1836
    aput-object v2, v7, v5

    .line 1838
    iget v8, v0, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v8, :cond_f9

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v8, :cond_f9

    .line 1839
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->f(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1841
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_c7

    .line 1842
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v8, :cond_a4

    .line 1843
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 1847
    :cond_a4
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v8, :cond_af

    .line 1848
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1850
    :cond_af
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1852
    iget v8, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_c7

    .line 1853
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1863
    :cond_c7
    :goto_c7
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v8, :cond_f2

    const-string/jumbo v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f2
    move v0, v1

    .line 1824
    :goto_f3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_23

    .line 1860
    :cond_f9
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    goto :goto_c7

    .line 1868
    :cond_fe
    if-nez v2, :cond_10f

    .line 1869
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1877
    :cond_10f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_192

    .line 1878
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1879
    if-lez v5, :cond_192

    .line 1880
    new-array v1, v5, [I

    move v2, v4

    .line 1881
    :goto_11e
    if-ge v2, v5, :cond_193

    .line 1882
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v0, v1, v2

    .line 1883
    aget v0, v1, v2

    if-gez v0, :cond_15f

    .line 1884
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure saving state: active "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 1888
    :cond_15f
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_18e

    const-string/jumbo v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveAllState: adding fragment #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_18e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11e

    :cond_192
    move-object v1, v3

    .line 1895
    :cond_193
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e6

    .line 1896
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1897
    if-lez v5, :cond_1e6

    .line 1898
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 1899
    :goto_1a2
    if-ge v2, v5, :cond_1e6

    .line 1900
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v4, v3, v2

    .line 1901
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1e2

    const-string/jumbo v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveAllState: adding back stack #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_1e2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a2

    .line 1907
    :cond_1e6
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1908
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 1909
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 1910
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v3, v0

    .line 1911
    goto/16 :goto_18

    :cond_1f4
    move v0, v2

    goto/16 :goto_f3
.end method

.method public k()V
    .registers 2

    .prologue
    .line 2036
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2037
    return-void
.end method

.method public l()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2040
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2041
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2042
    return-void
.end method

.method public m()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2045
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2046
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2047
    return-void
.end method

.method public n()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2050
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2051
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2052
    return-void
.end method

.method public o()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2055
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2056
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2057
    return-void
.end method

.method public p()V
    .registers 3

    .prologue
    .line 2060
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2061
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 2067
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2069
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2070
    return-void
.end method

.method public r()V
    .registers 3

    .prologue
    .line 2073
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2074
    return-void
.end method

.method public s()V
    .registers 3

    .prologue
    .line 2077
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2078
    return-void
.end method

.method public t()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2081
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    .line 2082
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 2083
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2084
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    .line 2085
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    .line 2086
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    .line 2087
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 705
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_32

    .line 709
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 713
    :goto_27
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 711
    :cond_32
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_27
.end method

.method public u()V
    .registers 3

    .prologue
    .line 2101
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 2102
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2103
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2104
    if-eqz v0, :cond_1b

    .line 2105
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 2102
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2109
    :cond_1f
    return-void
.end method

.method v()Landroid/support/v4/view/LayoutInflaterFactory;
    .registers 1

    .prologue
    .line 2332
    return-object p0
.end method
