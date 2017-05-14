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

    .line 421
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    .line 424
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->b:Z

    .line 521
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    .line 849
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->A:Landroid/view/animation/Interpolator;

    .line 850
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->B:Landroid/view/animation/Interpolator;

    .line 851
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->C:Landroid/view/animation/Interpolator;

    .line 852
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->D:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    .line 530
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    .line 531
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    .line 533
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->z:Ljava/lang/Runnable;

    .line 2462
    return-void
.end method

.method static a(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .registers 7

    .prologue
    .line 872
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 873
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 874
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 875
    return-object v0
.end method

.method static a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .registers 15

    .prologue
    .line 858
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 859
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

    .line 861
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 862
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 863
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 864
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 865
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 866
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 867
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 868
    return-object v9
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .registers 7

    .prologue
    .line 562
    const-string/jumbo v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 566
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_3c

    .line 568
    :try_start_24
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    const-string/jumbo v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_31

    .line 579
    :goto_30
    throw p1

    .line 569
    :catch_31
    move-exception v0

    .line 570
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 574
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

    .line 575
    :catch_47
    move-exception v0

    .line 576
    const-string/jumbo v1, "FragmentManager"

    const-string/jumbo v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method static a(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .registers 4

    .prologue
    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    .line 556
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 557
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 558
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

    .line 541
    instance-of v0, p0, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_8

    move v1, v2

    .line 551
    :cond_7
    :goto_7
    return v1

    .line 543
    :cond_8
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_7

    .line 544
    check-cast p0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    move v0, v1

    .line 545
    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 546
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_23

    move v1, v2

    .line 547
    goto :goto_7

    .line 545
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static b(IZ)I
    .registers 3

    .prologue
    .line 2349
    const/4 v0, -0x1

    .line 2350
    sparse-switch p0, :sswitch_data_18

    .line 2361
    :goto_4
    return v0

    .line 2352
    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x2

    goto :goto_4

    .line 2355
    :sswitch_b
    if-eqz p1, :cond_f

    const/4 v0, 0x3

    goto :goto_4

    :cond_f
    const/4 v0, 0x4

    goto :goto_4

    .line 2358
    :sswitch_11
    if-eqz p1, :cond_15

    const/4 v0, 0x5

    goto :goto_4

    :cond_15
    const/4 v0, 0x6

    goto :goto_4

    .line 2350
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
    const/4 v1, 0x0

    .line 957
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 980
    :cond_5
    :goto_5
    return-void

    .line 960
    :cond_6
    invoke-static {p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 963
    :try_start_c
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    if-nez v0, :cond_21

    .line 964
    const-class v0, Landroid/view/animation/Animation;

    const-string/jumbo v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    .line 965
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 967
    :cond_21
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_29} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_29} :catch_42

    .line 976
    :goto_29
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 977
    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v1, p1, p2, v0}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_5

    .line 968
    :catch_36
    move-exception v0

    .line 969
    const-string/jumbo v2, "FragmentManager"

    const-string/jumbo v3, "No field with the name mListener is found in Animation class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 972
    goto :goto_29

    .line 970
    :catch_42
    move-exception v0

    .line 971
    const-string/jumbo v2, "FragmentManager"

    const-string/jumbo v3, "Cannot access Animation\'s mListener field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_29
.end method

.method public static d(I)I
    .registers 2

    .prologue
    .line 2325
    const/4 v0, 0x0

    .line 2326
    sparse-switch p0, :sswitch_data_e

    .line 2337
    :goto_4
    return v0

    .line 2328
    :sswitch_5
    const/16 v0, 0x2002

    .line 2329
    goto :goto_4

    .line 2331
    :sswitch_8
    const/16 v0, 0x1001

    .line 2332
    goto :goto_4

    .line 2334
    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    .line 2326
    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method private x()V
    .registers 4

    .prologue
    .line 1532
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    if-eqz v0, :cond_d

    .line 1533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1536
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 1537
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

    .line 1540
    :cond_2d
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/BackStackRecord;)I
    .registers 6

    .prologue
    .line 1569
    monitor-enter p0

    .line 1570
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4e

    .line 1571
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 1572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    .line 1574
    :cond_18
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1575
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

    .line 1576
    :cond_47
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    monitor-exit p0

    .line 1583
    :goto_4d
    return v0

    .line 1580
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

    .line 1581
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

    .line 1582
    :cond_8b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1583
    monitor-exit p0

    goto :goto_4d

    .line 1585
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
    .line 1475
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 1477
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_22

    .line 1478
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1479
    if-eqz v0, :cond_1e

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1e

    .line 1493
    :cond_1d
    :goto_1d
    return-object v0

    .line 1477
    :cond_1e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 1484
    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 1486
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2f
    if-ltz v1, :cond_43

    .line 1487
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1488
    if-eqz v0, :cond_3f

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_1d

    .line 1486
    :cond_3f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2f

    .line 1493
    :cond_43
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 682
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 683
    if-ne v1, v0, :cond_9

    .line 684
    const/4 v0, 0x0

    .line 695
    :cond_8
    :goto_8
    return-object v0

    .line 686
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_38

    .line 687
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

    .line 690
    :cond_38
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 691
    if-nez v0, :cond_8

    .line 692
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
    .line 1498
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 1500
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_28

    .line 1501
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1502
    if-eqz v0, :cond_24

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1516
    :cond_23
    :goto_23
    return-object v0

    .line 1500
    :cond_24
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 1507
    :cond_28
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_4f

    .line 1509
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_37
    if-ltz v1, :cond_4f

    .line 1510
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1511
    if-eqz v0, :cond_4b

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1509
    :cond_4b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_37

    .line 1516
    :cond_4f
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public a()Landroid/support/v4/app/FragmentTransaction;
    .registers 2

    .prologue
    .line 584
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

    .line 2366
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v4

    .line 2455
    :goto_e
    return-object v0

    .line 2370
    :cond_f
    const-string/jumbo v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2371
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2372
    if-nez v0, :cond_19f

    .line 2373
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2375
    :goto_23
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 2376
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2377
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2379
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    move-object v0, v4

    .line 2382
    goto :goto_e

    .line 2385
    :cond_3d
    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 2386
    :goto_43
    if-ne v1, v5, :cond_6d

    if-ne v7, v5, :cond_6d

    if-nez v8, :cond_6d

    .line 2387
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

    .line 2385
    goto :goto_43

    .line 2394
    :cond_6d
    if-eq v7, v5, :cond_116

    invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2395
    :goto_73
    if-nez v0, :cond_7b

    if-eqz v8, :cond_7b

    .line 2396
    invoke-virtual {p0, v8}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2398
    :cond_7b
    if-nez v0, :cond_83

    if-eq v1, v5, :cond_83

    .line 2399
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2402
    :cond_83
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v4, :cond_bb

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCreateView: id=0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2403
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

    .line 2402
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    :cond_bb
    if-nez v0, :cond_11b

    .line 2406
    invoke-static {p3, v6}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 2407
    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 2408
    if-eqz v7, :cond_119

    move v0, v7

    :goto_c6
    iput v0, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 2409
    iput v1, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2410
    iput-object v8, v4, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 2411
    iput-boolean v2, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2412
    iput-object p0, v4, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2413
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, v4, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2414
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p4, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2415
    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    .line 2439
    :goto_e3
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-ge v0, v2, :cond_182

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_182

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2440
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2445
    :goto_f1
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_187

    .line 2446
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

    .line 2394
    goto/16 :goto_73

    :cond_119
    move v0, v1

    .line 2408
    goto :goto_c6

    .line 2417
    :cond_11b
    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v4, :cond_16a

    .line 2420
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

    .line 2421
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

    .line 2422
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

    .line 2427
    :cond_16a
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2428
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2432
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_17f

    .line 2433
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_17f
    move-object v1, v0

    goto/16 :goto_e3

    .line 2442
    :cond_182
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_f1

    .line 2449
    :cond_187
    if-eqz v7, :cond_18e

    .line 2450
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 2452
    :cond_18e
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19b

    .line 2453
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2455
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

    .line 880
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 882
    if-eqz v0, :cond_10

    .line 934
    :cond_f
    :goto_f
    return-object v0

    .line 886
    :cond_10
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_22

    .line 887
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 888
    if-nez v0, :cond_f

    .line 893
    :cond_22
    if-nez p2, :cond_26

    move-object v0, v1

    .line 894
    goto :goto_f

    .line 897
    :cond_26
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->b(IZ)I

    move-result v0

    .line 898
    if-gez v0, :cond_2e

    move-object v0, v1

    .line 899
    goto :goto_f

    .line 902
    :cond_2e
    packed-switch v0, :pswitch_data_8e

    .line 917
    if-nez p4, :cond_41

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->e()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 918
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->f()I

    move-result p4

    .line 920
    :cond_41
    if-nez p4, :cond_8c

    move-object v0, v1

    .line 921
    goto :goto_f

    .line 904
    :pswitch_45
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f900000    # 1.125f

    invoke-static {v0, v1, v3, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 906
    :pswitch_52
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v5, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 908
    :pswitch_5d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v3, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 910
    :pswitch_68
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3f89999a    # 1.075f

    invoke-static {v0, v3, v1, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 912
    :pswitch_76
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 914
    :pswitch_81
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    :cond_8c
    move-object v0, v1

    .line 934
    goto :goto_f

    .line 902
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
    .line 626
    if-gez p1, :cond_1c

    .line 627
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

    .line 629
    :cond_1c
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 634
    return-void
.end method

.method a(IIIZ)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 1276
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 1277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1280
    :cond_10
    if-nez p4, :cond_17

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-ne v0, p1, :cond_17

    .line 1306
    :cond_16
    :goto_16
    return-void

    .line 1284
    :cond_17
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    .line 1285
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    move v6, v5

    move v7, v5

    .line 1287
    :goto_1f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_49

    .line 1288
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1289
    if-eqz v1, :cond_63

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1290
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1291
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_63

    .line 1292
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    .line 1287
    :goto_44
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1f

    .line 1297
    :cond_49
    if-nez v7, :cond_4e

    .line 1298
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->f()V

    .line 1301
    :cond_4e
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_16

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    .line 1302
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->d()V

    .line 1303
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    goto :goto_16

    :cond_63
    move v1, v7

    goto :goto_44
.end method

.method public a(ILandroid/support/v4/app/BackStackRecord;)V
    .registers 7

    .prologue
    .line 1589
    monitor-enter p0

    .line 1590
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    .line 1593
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1594
    if-ge p1, v0, :cond_44

    .line 1595
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

    .line 1596
    :cond_3d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :goto_42
    monitor-exit p0

    .line 1611
    return-void

    .line 1598
    :cond_44
    :goto_44
    if-ge v0, p1, :cond_81

    .line 1599
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_57

    .line 1601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    .line 1603
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

    .line 1604
    :cond_75
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 1607
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

    .line 1608
    :cond_aa
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 1610
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

    .line 1272
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 1273
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 2217
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 2218
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2219
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2220
    if-eqz v0, :cond_1b

    .line 2221
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2218
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2225
    :cond_1f
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 7

    .prologue
    .line 673
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_27

    .line 674
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

    .line 677
    :cond_27
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    return-void
.end method

.method a(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2009
    if-nez p1, :cond_5

    .line 2128
    :cond_4
    :goto_4
    return-void

    .line 2010
    :cond_5
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 2011
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_4

    .line 2017
    if-eqz p2, :cond_286

    .line 2018
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->a()Ljava/util/List;

    move-result-object v6

    .line 2019
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->b()Ljava/util/List;

    move-result-object v3

    .line 2020
    if-eqz v6, :cond_7b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1c
    move v5, v2

    .line 2021
    :goto_1d
    if-ge v5, v1, :cond_7d

    .line 2022
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2023
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v7, :cond_43

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreAllState: re-attaching retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :cond_43
    iget-object v7, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v8, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v7, v7, v8

    .line 2025
    iput-object v0, v7, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;

    .line 2026
    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2027
    iput v2, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 2028
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2029
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 2030
    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 2031
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-eqz v8, :cond_77

    .line 2032
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2033
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string/jumbo v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2035
    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2021
    :cond_77
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1d

    :cond_7b
    move v1, v2

    .line 2020
    goto :goto_1c

    :cond_7d
    move-object v1, v3

    .line 2042
    :goto_7e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    .line 2043
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_91

    .line 2044
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_91
    move v3, v2

    .line 2046
    :goto_92
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v0, v0

    if-ge v3, v0, :cond_11f

    .line 2047
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v5, v0, v3

    .line 2048
    if-eqz v5, :cond_e7

    .line 2050
    if-eqz v1, :cond_283

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_283

    .line 2051
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 2053
    :goto_ab
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v6, v7, v0}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerNonConfig;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2054
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v6, :cond_dc

    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: active #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_dc
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    iput-object v4, v5, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;

    .line 2046
    :goto_e3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_92

    .line 2061
    :cond_e7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_f7

    .line 2063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    .line 2065
    :cond_f7
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_115

    const-string/jumbo v0, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreAllState: avail #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_115
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 2071
    :cond_11f
    if-eqz p2, :cond_17f

    .line 2072
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->a()Ljava/util/List;

    move-result-object v6

    .line 2073
    if-eqz v6, :cond_153

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    :goto_12c
    move v5, v2

    .line 2074
    :goto_12d
    if-ge v5, v3, :cond_17f

    .line 2075
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2076
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v1, :cond_14f

    .line 2077
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_155

    .line 2078
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget v7, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 2074
    :cond_14f
    :goto_14f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_12d

    :cond_153
    move v3, v2

    .line 2073
    goto :goto_12c

    .line 2080
    :cond_155
    const-string/jumbo v1, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Re-attaching retained fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " target no longer exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_14f

    .line 2089
    :cond_17f
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_207

    .line 2090
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    move v1, v2

    .line 2091
    :goto_18e
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_209

    .line 2092
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2093
    if-nez v0, :cond_1c1

    .line 2094
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No instantiated fragment for index #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 2097
    :cond_1c1
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 2098
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v3, :cond_1ed

    const-string/jumbo v3, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreAllState: added #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_1ed
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    .line 2100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2102
    :cond_1fe
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18e

    .line 2105
    :cond_207
    iput-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 2109
    :cond_209
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_27f

    .line 2110
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    move v0, v2

    .line 2111
    :goto_218
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2112
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v1

    .line 2113
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v3, :cond_26e

    .line 2114
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

    .line 2116
    new-instance v3, Landroid/support/v4/util/LogWriter;

    const-string/jumbo v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 2117
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2118
    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2120
    :cond_26e
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->p:I

    if-ltz v3, :cond_27c

    .line 2122
    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->p:I

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(ILandroid/support/v4/app/BackStackRecord;)V

    .line 2111
    :cond_27c
    add-int/lit8 v0, v0, 0x1

    goto :goto_218

    .line 2126
    :cond_27f
    iput-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    goto/16 :goto_4

    :cond_283
    move-object v0, v4

    goto/16 :goto_ab

    :cond_286
    move-object v1, v4

    goto/16 :goto_7e
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 938
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_c

    .line 939
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    if-eqz v0, :cond_d

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->w:Z

    .line 947
    :cond_c
    :goto_c
    return-void

    .line 944
    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 945
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

    .line 1376
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

    .line 1377
    :cond_2d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_5c

    move v0, v1

    .line 1378
    :goto_34
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_3a

    if-eqz v0, :cond_5b

    .line 1379
    :cond_3a
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_43

    .line 1380
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1382
    :cond_43
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_4d

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_4d

    .line 1383
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1385
    :cond_4d
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1386
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1387
    if-eqz v0, :cond_5e

    move v2, v5

    :goto_54
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1390
    :cond_5b
    return-void

    :cond_5c
    move v0, v5

    .line 1377
    goto :goto_34

    :cond_5e
    move v2, v1

    .line 1387
    goto :goto_54
.end method

.method a(Landroid/support/v4/app/Fragment;IIIZ)V
    .registers 16

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 989
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_10

    :cond_d
    if-le p2, v5, :cond_10

    move p2, v5

    .line 992
    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_1a

    .line 994
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 998
    :cond_1a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_25

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v9, :cond_25

    if-le p2, v6, :cond_25

    move p2, v6

    .line 1001
    :cond_25
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, p2, :cond_304

    .line 1005
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_32

    .line 1265
    :cond_31
    :goto_31
    return-void

    .line 1008
    :cond_32
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_40

    .line 1013
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1014
    iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1016
    :cond_40
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_448

    .line 1260
    :cond_45
    :goto_45
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-eq v0, p2, :cond_31

    .line 1261
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

    .line 1263
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_31

    .line 1018
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

    .line 1019
    :cond_a3
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_ef

    .line 1020
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1021
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1023
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1025
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_db

    .line 1026
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 1029
    :cond_db
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1031
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_ef

    .line 1032
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1033
    if-le p2, v6, :cond_ef

    move p2, v6

    .line 1038
    :cond_ef
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1039
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1040
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_131

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1041
    :goto_ff
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1042
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1043
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1044
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_138

    .line 1045
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

    .line 1040
    :cond_131
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    .line 1041
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->k()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v0

    goto :goto_ff

    .line 1048
    :cond_138
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_2d2

    .line 1049
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->b(Landroid/support/v4/app/Fragment;)V

    .line 1054
    :goto_141
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_2d9

    .line 1055
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1060
    :goto_14a
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1061
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_183

    .line 1065
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1067
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2ec

    .line 1068
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1069
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2e2

    .line 1070
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 1074
    :goto_171
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_17c

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    :cond_17c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1081
    :cond_183
    :goto_183
    :pswitch_183
    if-le p2, v5, :cond_281

    .line 1082
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

    .line 1083
    :cond_1a3
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_271

    .line 1085
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_444

    .line 1086
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d3

    .line 1087
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 1092
    :cond_1d3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentContainer;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1093
    if-nez v0, :cond_225

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v1, :cond_225

    .line 1096
    :try_start_1e3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1ec
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e3 .. :try_end_1ec} :catch_2f0

    move-result-object v1

    .line 1100
    :goto_1ed
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No view found for id 0x"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1102
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ") for fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1100
    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 1107
    :cond_225
    :goto_225
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1108
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1110
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_300

    .line 1111
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2f6

    .line 1113
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Z)V

    .line 1117
    :goto_248
    if-eqz v0, :cond_25f

    .line 1118
    invoke-virtual {p0, p1, p3, v5, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1120
    if-eqz v1, :cond_25a

    .line 1121
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1122
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1124
    :cond_25a
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1126
    :cond_25f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_26a

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    :cond_26a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1133
    :cond_271
    :goto_271
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1134
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_27f

    .line 1135
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1137
    :cond_27f
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1140
    :cond_281
    :pswitch_281
    const/4 v0, 0x2

    if-le p2, v0, :cond_286

    .line 1141
    iput v6, p1, Landroid/support/v4/app/Fragment;->mState:I

    .line 1144
    :cond_286
    :pswitch_286
    if-le p2, v6, :cond_2a9

    .line 1145
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_2a6

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

    .line 1146
    :cond_2a6
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 1149
    :cond_2a9
    :pswitch_2a9
    if-le p2, v9, :cond_45

    .line 1150
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_2c9

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

    .line 1151
    :cond_2c9
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1152
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1153
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_45

    .line 1051
    :cond_2d2
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_141

    .line 1057
    :cond_2d9
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1058
    iput v5, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto/16 :goto_14a

    .line 1072
    :cond_2e2
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_171

    .line 1077
    :cond_2ec
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_183

    .line 1097
    :catch_2f0
    move-exception v1

    .line 1098
    const-string/jumbo v1, "unknown"

    goto/16 :goto_1ed

    .line 1115
    :cond_2f6
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/NoSaveStateFrameLayout;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_248

    .line 1129
    :cond_300
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_271

    .line 1156
    :cond_304
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, p2, :cond_45

    .line 1157
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_456

    goto/16 :goto_45

    .line 1216
    :cond_30f
    :goto_30f
    :pswitch_30f
    if-ge p2, v5, :cond_45

    .line 1217
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    if-eqz v0, :cond_320

    .line 1218
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_320

    .line 1225
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1226
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1227
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1230
    :cond_320
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_404

    .line 1235
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move p2, v5

    .line 1236
    goto/16 :goto_45

    .line 1159
    :pswitch_329
    const/4 v0, 0x5

    if-ge p2, v0, :cond_34d

    .line 1160
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_34a

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

    .line 1161
    :cond_34a
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1164
    :cond_34d
    :pswitch_34d
    if-ge p2, v9, :cond_370

    .line 1165
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_36d

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

    .line 1166
    :cond_36d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1169
    :cond_370
    :pswitch_370
    if-ge p2, v6, :cond_393

    .line 1170
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_390

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

    .line 1171
    :cond_390
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 1174
    :cond_393
    :pswitch_393
    const/4 v0, 0x2

    if-ge p2, v0, :cond_30f

    .line 1175
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_3b4

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

    .line 1176
    :cond_3b4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3c7

    .line 1179
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3c7

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_3c7

    .line 1180
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;)V

    .line 1183
    :cond_3c7
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1184
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3fc

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3fc

    .line 1186
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-lez v0, :cond_442

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    if-nez v0, :cond_442

    .line 1187
    invoke-virtual {p0, p1, p3, v3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1190
    :goto_3de
    if-eqz v0, :cond_3f5

    .line 1192
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1193
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1194
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1195
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$5;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1207
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1209
    :cond_3f5
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1211
    :cond_3fc
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1212
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1213
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_30f

    .line 1238
    :cond_404
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_422

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

    .line 1239
    :cond_422
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_437

    .line 1240
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1245
    :goto_429
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDetach()V

    .line 1246
    if-nez p5, :cond_45

    .line 1247
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_43a

    .line 1248
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_45

    .line 1242
    :cond_437
    iput v3, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_429

    .line 1250
    :cond_43a
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1251
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1252
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_45

    :cond_442
    move-object v0, v7

    goto :goto_3de

    :cond_444
    move-object v0, v7

    goto/16 :goto_225

    .line 1016
    nop

    :pswitch_data_448
    .packed-switch 0x0
        :pswitch_85
        :pswitch_183
        :pswitch_281
        :pswitch_286
        :pswitch_2a9
    .end packed-switch

    .line 1157
    :pswitch_data_456
    .packed-switch 0x1
        :pswitch_30f
        :pswitch_393
        :pswitch_370
        :pswitch_34d
        :pswitch_329
    .end packed-switch
.end method

.method public a(Landroid/support/v4/app/Fragment;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1354
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 1357
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

    .line 1358
    :cond_2a
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;)V

    .line 1359
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_6c

    .line 1360
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1361
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

    .line 1363
    :cond_53
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1365
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1366
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_67

    .line 1367
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1369
    :cond_67
    if-eqz p2, :cond_6c

    .line 1370
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;)V

    .line 1373
    :cond_6c
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .registers 6

    .prologue
    .line 2132
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2133
    :cond_d
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    .line 2134
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    .line 2135
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    .line 2136
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .registers 5

    .prologue
    .line 1550
    if-nez p2, :cond_5

    .line 1551
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->x()V

    .line 1553
    :cond_5
    monitor-enter p0

    .line 1554
    :try_start_6
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1a

    .line 1555
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1565
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0

    .line 1557
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_25

    .line 1558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    .line 1560
    :cond_25
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 1562
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1563
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1565
    :cond_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_17

    .line 1566
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_64

    .line 742
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 743
    if-lez v4, :cond_64

    .line 744
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 747
    :goto_3c
    if-ge v2, v4, :cond_64

    .line 748
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 749
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 750
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 751
    if-eqz v0, :cond_60

    .line 752
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 747
    :cond_60
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3c

    .line 758
    :cond_64
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_a1

    .line 759
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 760
    if-lez v4, :cond_a1

    .line 761
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 762
    :goto_7a
    if-ge v2, v4, :cond_a1

    .line 763
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 764
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 765
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7a

    .line 770
    :cond_a1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_de

    .line 771
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 772
    if-lez v4, :cond_de

    .line 773
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 774
    :goto_b7
    if-ge v2, v4, :cond_de

    .line 775
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 776
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 777
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b7

    .line 782
    :cond_de
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_11e

    .line 783
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 784
    if-lez v4, :cond_11e

    .line 785
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 786
    :goto_f4
    if-ge v2, v4, :cond_11e

    .line 787
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 788
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 789
    const-string/jumbo v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 786
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f4

    .line 795
    :cond_11e
    monitor-enter p0

    .line 796
    :try_start_11f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_158

    .line 797
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 798
    if-lez v3, :cond_158

    .line 799
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 800
    :goto_135
    if-ge v2, v3, :cond_158

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 803
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 800
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_135

    .line 808
    :cond_158
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_17a

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17a

    .line 809
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    :cond_17a
    monitor-exit p0
    :try_end_17b
    .catchall {:try_start_11f .. :try_end_17b} :catchall_1b3

    .line 814
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b6

    .line 815
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 816
    if-lez v2, :cond_1b6

    .line 817
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    :goto_190
    if-ge v1, v2, :cond_1b6

    .line 819
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 820
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 821
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 818
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_190

    .line 812
    :catchall_1b3
    move-exception v0

    :try_start_1b4
    monitor-exit p0
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    throw v0

    .line 826
    :cond_1b6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 828
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1ed

    .line 830
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 832
    :cond_1ed
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 833
    const-string/jumbo v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 834
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 835
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    if-eqz v0, :cond_223

    .line 836
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 839
    :cond_223
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    if-eqz v0, :cond_235

    .line 840
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    :cond_235
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_257

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_257

    .line 844
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    :cond_257
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 2193
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 2202
    :cond_4
    return-void

    .line 2196
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_4

    .line 2197
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2198
    if-eqz v0, :cond_1d

    .line 2199
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 2196
    :cond_1d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e
.end method

.method a(Landroid/os/Handler;Ljava/lang/String;II)Z
    .registers 16

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1723
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 1796
    :cond_7
    :goto_7
    return v3

    .line 1726
    :cond_8
    if-nez p2, :cond_3b

    if-gez p3, :cond_3b

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_3b

    .line 1727
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1728
    if-ltz v0, :cond_7

    .line 1731
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1732
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1733
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1734
    iget v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-lt v5, v2, :cond_33

    .line 1735
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1737
    :cond_33
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/support/v4/app/BackStackRecord;->a(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    .line 1738
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->i()V

    :goto_39
    move v3, v2

    .line 1796
    goto :goto_7

    .line 1740
    :cond_3b
    const/4 v0, -0x1

    .line 1741
    if-nez p2, :cond_40

    if-ltz p3, :cond_8f

    .line 1744
    :cond_40
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1745
    :goto_48
    if-ltz v1, :cond_5e

    .line 1746
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1747
    if-eqz p2, :cond_85

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1755
    :cond_5e
    if-ltz v1, :cond_7

    .line 1758
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    .line 1759
    add-int/lit8 v1, v1, -0x1

    .line 1761
    :goto_66
    if-ltz v1, :cond_8e

    .line 1762
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1763
    if-eqz p2, :cond_7c

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    :cond_7c
    if-ltz p3, :cond_8e

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->p:I

    if-ne p3, v0, :cond_8e

    .line 1765
    :cond_82
    add-int/lit8 v1, v1, -0x1

    .line 1766
    goto :goto_66

    .line 1750
    :cond_85
    if-ltz p3, :cond_8b

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->p:I

    if-eq p3, v0, :cond_5e

    .line 1753
    :cond_8b
    add-int/lit8 v1, v1, -0x1

    .line 1754
    goto :goto_48

    :cond_8e
    move v0, v1

    .line 1772
    :cond_8f
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1775
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1777
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a6
    if-le v1, v0, :cond_b4

    .line 1778
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    add-int/lit8 v1, v1, -0x1

    goto :goto_a6

    .line 1780
    :cond_b4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 1781
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 1782
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1783
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-lt v0, v2, :cond_d8

    move v1, v3

    .line 1784
    :goto_c9
    if-gt v1, v7, :cond_d8

    .line 1785
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1784
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c9

    :cond_d8
    move-object v5, v4

    move v4, v3

    .line 1789
    :goto_da
    if-gt v4, v7, :cond_112

    .line 1790
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_fe

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

    .line 1791
    :cond_fe
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    if-ne v4, v7, :cond_110

    move v1, v2

    :goto_107
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/support/v4/app/BackStackRecord;->a(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v1

    .line 1789
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v1

    goto :goto_da

    :cond_110
    move v1, v3

    .line 1791
    goto :goto_107

    .line 1794
    :cond_112
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->i()V

    goto/16 :goto_39
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2271
    .line 2272
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    move v1, v0

    move v2, v0

    .line 2273
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 2274
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2275
    if-eqz v0, :cond_20

    .line 2276
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2277
    const/4 v2, 0x1

    .line 2273
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_24
    move v2, v0

    .line 2282
    :cond_25
    return v2
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 2239
    .line 2240
    const/4 v1, 0x0

    .line 2241
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    move v3, v4

    move v2, v4

    .line 2242
    :goto_8
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_32

    .line 2243
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2244
    if-eqz v0, :cond_2b

    .line 2245
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2246
    const/4 v2, 0x1

    .line 2247
    if-nez v1, :cond_28

    .line 2248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2250
    :cond_28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    move v0, v2

    .line 2242
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_8

    :cond_31
    move v2, v4

    .line 2256
    :cond_32
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    .line 2257
    :goto_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_54

    .line 2258
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2259
    if-eqz v1, :cond_4e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 2260
    :cond_4e
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 2257
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 2265
    :cond_54
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->j:Ljava/util/ArrayList;

    .line 2267
    return v2
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2286
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    move v1, v2

    .line 2287
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2288
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2289
    if-eqz v0, :cond_20

    .line 2290
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2291
    const/4 v2, 0x1

    .line 2296
    :cond_1f
    return v2

    .line 2287
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4

    .prologue
    .line 1520
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 1521
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_26

    .line 1522
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1523
    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1528
    :goto_21
    return-object v0

    .line 1521
    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 1528
    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public b()V
    .registers 3

    .prologue
    .line 594
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 599
    return-void
.end method

.method b(Landroid/support/v4/app/BackStackRecord;)V
    .registers 3

    .prologue
    .line 1714
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    .line 1717
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->i()V

    .line 1719
    return-void
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1268
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1269
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;II)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 1393
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

    .line 1394
    :cond_1f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_52

    .line 1395
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1396
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_41

    .line 1397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_3a

    .line 1400
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1401
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1403
    :cond_3a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1405
    :cond_41
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4f

    .line 1406
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1408
    :cond_4f
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1410
    :cond_52
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .registers 4

    .prologue
    .line 2314
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 2315
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2316
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2317
    if-eqz v0, :cond_1b

    .line 2318
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2315
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2322
    :cond_1f
    return-void
.end method

.method public b(Ljava/lang/Runnable;Z)V
    .registers 5

    .prologue
    .line 1625
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    if-eqz v0, :cond_d

    .line 1626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1629
    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1633
    :cond_26
    if-nez p2, :cond_2b

    .line 1634
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->x()V

    .line 1637
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    .line 1638
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1639
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    .line 1641
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->h()V

    .line 1642
    return-void
.end method

.method public b(Z)V
    .registers 4

    .prologue
    .line 2205
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 2214
    :cond_4
    return-void

    .line 2208
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_4

    .line 2209
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2210
    if-eqz v0, :cond_1d

    .line 2211
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 2208
    :cond_1d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e
.end method

.method b(I)Z
    .registers 3

    .prologue
    .line 983
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    if-lt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2300
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    move v1, v2

    .line 2301
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2302
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2303
    if-eqz v0, :cond_20

    .line 2304
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2305
    const/4 v2, 0x1

    .line 2310
    :cond_1f
    return v2

    .line 2301
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method public c(I)V
    .registers 5

    .prologue
    .line 1614
    monitor-enter p0

    .line 1615
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1616
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    .line 1619
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

    .line 1620
    :cond_30
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    monitor-exit p0

    .line 1622
    return-void

    .line 1621
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method c(Landroid/support/v4/app/Fragment;)V
    .registers 5

    .prologue
    .line 1320
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    .line 1336
    :cond_4
    :goto_4
    return-void

    .line 1324
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4b

    .line 1325
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    .line 1328
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1329
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
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

    .line 1332
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

    .line 1333
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

    .line 1413
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

    .line 1414
    :cond_20
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_50

    .line 1415
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1416
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 1417
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1419
    if-eqz v0, :cond_3a

    .line 1420
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1421
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1423
    :cond_3a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    :cond_3f
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4d

    .line 1426
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1428
    :cond_4d
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1430
    :cond_50
    return-void
.end method

.method public c()Z
    .registers 5

    .prologue
    .line 603
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->x()V

    .line 604
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->e()Z

    .line 605
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

.method public d()I
    .registers 2

    .prologue
    .line 648
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

.method d(Landroid/support/v4/app/Fragment;)V
    .registers 5

    .prologue
    .line 1339
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    .line 1351
    :goto_4
    return-void

    .line 1343
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

    .line 1344
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1345
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_36

    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    .line 1348
    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentHostCallback;->b(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    goto :goto_4
.end method

.method public d(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1433
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

    .line 1434
    :cond_20
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_64

    .line 1435
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1436
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_64

    .line 1438
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    .line 1439
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

    .line 1440
    :cond_4c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1442
    :cond_51
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_5b

    .line 1443
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1445
    :cond_5b
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1446
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1449
    :cond_64
    return-void
.end method

.method e(Landroid/support/v4/app/Fragment;)V
    .registers 4

    .prologue
    .line 1842
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1855
    :cond_4
    :goto_4
    return-void

    .line 1845
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1846
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    .line 1850
    :goto_10
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1851
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1852
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1853
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->y:Landroid/util/SparseArray;

    goto :goto_4

    .line 1848
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

    .line 1452
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

    .line 1453
    :cond_20
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_8f

    .line 1454
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1455
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_8f

    .line 1456
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_35

    .line 1457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 1459
    :cond_35
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1460
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

    .line 1462
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

    .line 1463
    :cond_75
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1465
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_86

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_86

    .line 1466
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->s:Z

    .line 1468
    :cond_86
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1471
    :cond_8f
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    move-result v0

    return v0
.end method

.method f(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1858
    .line 1860
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    if-nez v0, :cond_c

    .line 1861
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    .line 1863
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1864
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1865
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    .line 1866
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->x:Landroid/os/Bundle;

    .line 1869
    :goto_1d
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_24

    .line 1870
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;)V

    .line 1872
    :cond_24
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_37

    .line 1873
    if-nez v0, :cond_2f

    .line 1874
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1876
    :cond_2f
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1879
    :cond_37
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_4a

    .line 1880
    if-nez v0, :cond_42

    .line 1881
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1884
    :cond_42
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1887
    :cond_4a
    return-object v0

    :cond_4b
    move-object v0, v1

    goto :goto_1d
.end method

.method f()V
    .registers 3

    .prologue
    .line 1309
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1317
    :cond_4
    return-void

    .line 1311
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1312
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1313
    if-eqz v0, :cond_1c

    .line 1314
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;)V

    .line 1311
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public g()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1648
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    if-eqz v0, :cond_f

    .line 1649
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1652
    :cond_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_28

    .line 1653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move v0, v1

    .line 1661
    :goto_29
    monitor-enter p0

    .line 1662
    :try_start_2a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3b

    .line 1663
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_7a

    .line 1684
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->h()V

    .line 1686
    return v0

    .line 1666
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1667
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    array-length v0, v0

    if-ge v0, v3, :cond_4e

    .line 1668
    :cond_4a
    new-array v0, v3, [Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    .line 1670
    :cond_4e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1671
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1672
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1673
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_3b .. :try_end_66} :catchall_7a

    .line 1675
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    move v0, v1

    .line 1676
    :goto_69
    if-ge v0, v3, :cond_7d

    .line 1677
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1678
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->d:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 1676
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 1673
    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0

    .line 1680
    :cond_7d
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->e:Z

    move v0, v2

    .line 1682
    goto :goto_29
.end method

.method h()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1690
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->w:Z

    if-eqz v0, :cond_2f

    move v1, v2

    move v3, v2

    .line 1692
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 1693
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1694
    if-eqz v0, :cond_24

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v4, :cond_24

    .line 1695
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a()Z

    move-result v0

    or-int/2addr v3, v0

    .line 1692
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1698
    :cond_28
    if-nez v3, :cond_2f

    .line 1699
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->w:Z

    .line 1700
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->f()V

    .line 1703
    :cond_2f
    return-void
.end method

.method i()V
    .registers 3

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 1707
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 1708
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->a()V

    .line 1707
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1711
    :cond_1d
    return-void
.end method

.method j()Landroid/support/v4/app/FragmentManagerNonConfig;
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1800
    .line 1802
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_85

    move v3, v4

    move-object v1, v5

    move-object v2, v5

    .line 1803
    :goto_a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_87

    .line 1804
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1805
    if-eqz v0, :cond_7f

    .line 1806
    iget-boolean v6, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_54

    .line 1807
    if-nez v2, :cond_27

    .line 1808
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1810
    :cond_27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    iput-boolean v7, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1812
    iget-object v6, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_70

    iget-object v6, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_34
    iput v6, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 1813
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v6, :cond_54

    const-string/jumbo v6, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retainNonConfig: keeping retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_54
    iget-object v6, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v6, :cond_92

    .line 1817
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->j()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v6

    .line 1818
    if-eqz v6, :cond_92

    .line 1819
    if-nez v1, :cond_72

    .line 1820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    .line 1821
    :goto_68
    if-ge v1, v3, :cond_73

    .line 1822
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1812
    :cond_70
    const/4 v6, -0x1

    goto :goto_34

    :cond_72
    move-object v0, v1

    .line 1825
    :cond_73
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    move v0, v7

    .line 1829
    :goto_78
    if-eqz v1, :cond_7f

    if-nez v0, :cond_7f

    .line 1830
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    move-object v0, v2

    .line 1803
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_a

    :cond_85
    move-object v1, v5

    move-object v2, v5

    .line 1835
    :cond_87
    if-nez v2, :cond_8c

    if-nez v1, :cond_8c

    .line 1838
    :goto_8b
    return-object v5

    :cond_8c
    new-instance v5, Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-direct {v5, v2, v1}, Landroid/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_8b

    :cond_92
    move v0, v4

    goto :goto_78
.end method

.method k()Landroid/os/Parcelable;
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1893
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 1895
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->b:Z

    if-eqz v0, :cond_c

    .line 1905
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 1908
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_19

    .line 2003
    :cond_18
    :goto_18
    return-object v3

    .line 1913
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1914
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    .line 1916
    :goto_23
    if-ge v5, v6, :cond_fe

    .line 1917
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1918
    if-eqz v0, :cond_1f4

    .line 1919
    iget v2, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_5c

    .line 1920
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

    .line 1927
    :cond_5c
    new-instance v2, Landroid/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1928
    aput-object v2, v7, v5

    .line 1930
    iget v8, v0, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v8, :cond_f9

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v8, :cond_f9

    .line 1931
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->f(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    .line 1933
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_c7

    .line 1934
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v8, :cond_a4

    .line 1935
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

    .line 1939
    :cond_a4
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v8, :cond_af

    .line 1940
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    .line 1942
    :cond_af
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1944
    iget v8, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_c7

    .line 1945
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1955
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

    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f2
    move v0, v1

    .line 1916
    :goto_f3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_23

    .line 1952
    :cond_f9
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    goto :goto_c7

    .line 1960
    :cond_fe
    if-nez v2, :cond_10f

    .line 1961
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "FragmentManager"

    const-string/jumbo v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1969
    :cond_10f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_192

    .line 1970
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1971
    if-lez v5, :cond_192

    .line 1972
    new-array v1, v5, [I

    move v2, v4

    .line 1973
    :goto_11e
    if-ge v2, v5, :cond_193

    .line 1974
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v0, v1, v2

    .line 1975
    aget v0, v1, v2

    if-gez v0, :cond_15f

    .line 1976
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure saving state: active "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    .line 1977
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

    .line 1976
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/RuntimeException;)V

    .line 1980
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

    .line 1981
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1980
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_18e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11e

    :cond_192
    move-object v1, v3

    .line 1987
    :cond_193
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e6

    .line 1988
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1989
    if-lez v5, :cond_1e6

    .line 1990
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 1991
    :goto_1a2
    if-ge v2, v5, :cond_1e6

    .line 1992
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v4, v3, v2

    .line 1993
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

    .line 1994
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1993
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_1e2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a2

    .line 1999
    :cond_1e6
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 2000
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 2001
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 2002
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v3, v0

    .line 2003
    goto/16 :goto_18

    :cond_1f4
    move v0, v2

    goto/16 :goto_f3
.end method

.method public l()V
    .registers 2

    .prologue
    .line 2139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2140
    return-void
.end method

.method public m()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2143
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2144
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2145
    return-void
.end method

.method public n()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2148
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2149
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2150
    return-void
.end method

.method public o()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2153
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2154
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2155
    return-void
.end method

.method public p()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2158
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2159
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2160
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 2163
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2164
    return-void
.end method

.method public r()V
    .registers 3

    .prologue
    .line 2170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->t:Z

    .line 2172
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2173
    return-void
.end method

.method public s()V
    .registers 3

    .prologue
    .line 2176
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2177
    return-void
.end method

.method public t()V
    .registers 3

    .prologue
    .line 2180
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 724
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_32

    .line 728
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 732
    :goto_27
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 730
    :cond_32
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_27
.end method

.method public u()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2184
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->u:Z

    .line 2185
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 2186
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(IZ)V

    .line 2187
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    .line 2188
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->p:Landroid/support/v4/app/FragmentContainer;

    .line 2189
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->q:Landroid/support/v4/app/Fragment;

    .line 2190
    return-void
.end method

.method public v()V
    .registers 3

    .prologue
    .line 2228
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 2229
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2230
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2231
    if-eqz v0, :cond_1b

    .line 2232
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 2229
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2236
    :cond_1f
    return-void
.end method

.method w()Landroid/support/v4/view/LayoutInflaterFactory;
    .registers 1

    .prologue
    .line 2459
    return-object p0
.end method
