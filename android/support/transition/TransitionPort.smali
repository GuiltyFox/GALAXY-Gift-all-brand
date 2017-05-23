.class abstract Landroid/support/transition/TransitionPort;
.super Ljava/lang/Object;
.source "TransitionPort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/support/transition/TransitionValuesMaps;

.field d:J

.field e:J

.field f:Landroid/animation/TimeInterpolator;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
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
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field o:Landroid/support/transition/TransitionSetPort;

.field p:Landroid/view/ViewGroup;

.field q:Z

.field r:I

.field s:Z

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/support/transition/TransitionValuesMaps;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionPort;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide v4, p0, Landroid/support/transition/TransitionPort;->d:J

    .line 48
    iput-wide v4, p0, Landroid/support/transition/TransitionPort;->e:J

    .line 50
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->f:Landroid/animation/TimeInterpolator;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    .line 56
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->i:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->j:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->l:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->m:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->n:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->o:Landroid/support/transition/TransitionSetPort;

    .line 71
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->p:Landroid/view/ViewGroup;

    .line 79
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->q:Z

    .line 83
    iput v2, p0, Landroid/support/transition/TransitionPort;->r:I

    .line 86
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->s:Z

    .line 89
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->u:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->b:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    .line 100
    new-instance v0, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->v:Ljava/util/ArrayList;

    .line 109
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->x:Z

    .line 118
    return-void
.end method

.method private a(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    if-lez p2, :cond_c

    .line 489
    if-eqz p3, :cond_d

    .line 490
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/TransitionPort$ArrayListManager;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 495
    :cond_c
    :goto_c
    return-object p1

    .line 492
    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/TransitionPort$ArrayListManager;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_c
.end method

.method private a(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    if-eqz p2, :cond_8

    .line 514
    if-eqz p3, :cond_9

    .line 515
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 520
    :cond_8
    :goto_8
    return-object p1

    .line 517
    :cond_9
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_8
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    if-eqz p2, :cond_8

    .line 539
    if-eqz p3, :cond_9

    .line 540
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 545
    :cond_8
    :goto_8
    return-object p1

    .line 542
    :cond_9
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_8
.end method

.method private a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    if-eqz p1, :cond_d

    .line 438
    new-instance v0, Landroid/support/transition/TransitionPort$1;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/TransitionPort$1;-><init>(Landroid/support/transition/TransitionPort;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionPort;->a(Landroid/animation/Animator;)V

    .line 452
    :cond_d
    return-void
.end method

.method private d(Landroid/view/View;Z)V
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 683
    if-nez p1, :cond_4

    .line 765
    :cond_3
    return-void

    .line 687
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_116

    .line 688
    const/4 v0, 0x1

    move v6, v0

    .line 690
    :goto_e
    if-eqz v6, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    :cond_20
    const/4 v2, -0x1

    .line 695
    const-wide/16 v0, -0x1

    .line 696
    if-nez v6, :cond_69

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    .line 704
    :goto_2c
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 707
    :cond_3c
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 710
    :cond_48
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_7b

    if-eqz p1, :cond_7b

    .line 711
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v4

    .line 712
    :goto_55
    if-ge v5, v7, :cond_7b

    .line 713
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 712
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_55

    .line 699
    :cond_69
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 700
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 701
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    goto :goto_2c

    .line 718
    :cond_7b
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 719
    iput-object p1, v0, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 720
    if-eqz p2, :cond_dc

    .line 721
    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionValues;)V

    .line 725
    :goto_87
    if-eqz p2, :cond_e8

    .line 726
    if-nez v6, :cond_e0

    .line 727
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    if-ltz v1, :cond_9b

    .line 729
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    :cond_9b
    :goto_9b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 746
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_af

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->l:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 749
    :cond_af
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 752
    :cond_bb
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_103

    if-eqz p1, :cond_103

    .line 753
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v4

    .line 754
    :goto_c8
    if-ge v1, v2, :cond_103

    .line 755
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 754
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c8

    .line 723
    :cond_dc
    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionValues;)V

    goto :goto_87

    .line 732
    :cond_e0
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    goto :goto_9b

    .line 735
    :cond_e8
    if-nez v6, :cond_fb

    .line 736
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    if-ltz v1, :cond_9b

    .line 738
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9b

    .line 741
    :cond_fb
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    goto :goto_9b

    .line 760
    :cond_103
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v4

    .line 761
    :goto_106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 762
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/transition/TransitionPort;->d(Landroid/view/View;Z)V

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    :cond_116
    move v6, v4

    goto/16 :goto_e
.end method

.method private static l()Landroid/support/v4/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Landroid/support/transition/TransitionPort;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 122
    if-nez v0, :cond_14

    .line 123
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 124
    sget-object v1, Landroid/support/transition/TransitionPort;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 126
    :cond_14
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 459
    if-lez p1, :cond_b

    .line 460
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_b
    return-object p0
.end method

.method public a(IZ)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->i:Ljava/util/ArrayList;

    .line 474
    return-object p0
.end method

.method public a(J)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 134
    iput-wide p1, p0, Landroid/support/transition/TransitionPort;->e:J

    .line 135
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Landroid/support/transition/TransitionPort;->f:Landroid/animation/TimeInterpolator;

    .line 153
    return-object p0
.end method

.method public a(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    .line 1052
    :cond_b
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    return-object p0
.end method

.method public a(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->j:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->j:Ljava/util/ArrayList;

    .line 500
    return-object p0
.end method

.method public a(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    .line 525
    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1101
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    iget-wide v2, p0, Landroid/support/transition/TransitionPort;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5d

    .line 1103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/TransitionPort;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    :cond_5d
    iget-wide v2, p0, Landroid/support/transition/TransitionPort;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_84

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/TransitionPort;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    :cond_84
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->f:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_a9

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/TransitionPort;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    :cond_a9
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b9

    iget-object v2, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_164

    .line 1112
    :cond_b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1113
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10f

    move-object v2, v0

    move v0, v1

    .line 1114
    :goto_d7
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_110

    .line 1115
    if-lez v0, :cond_f5

    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1118
    :cond_f5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1114
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :cond_10f
    move-object v2, v0

    .line 1121
    :cond_110
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_150

    .line 1122
    :goto_118
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_150

    .line 1123
    if-lez v1, :cond_136

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1126
    :cond_136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 1129
    :cond_150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    :cond_164
    return-object v0
.end method

.method protected a(Landroid/animation/Animator;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 931
    if-nez p1, :cond_8

    .line 932
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->i()V

    .line 952
    :goto_7
    return-void

    .line 934
    :cond_8
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 935
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 937
    :cond_17
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    .line 938
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 940
    :cond_26
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 941
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 943
    :cond_33
    new-instance v0, Landroid/support/transition/TransitionPort$2;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionPort$2;-><init>(Landroid/support/transition/TransitionPort;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 950
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_7
.end method

.method public abstract a(Landroid/support/transition/TransitionValues;)V
.end method

.method a(Landroid/view/ViewGroup;)V
    .registers 12

    .prologue
    .line 862
    invoke-static {}, Landroid/support/transition/TransitionPort;->l()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 863
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 864
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_b
    if-ltz v4, :cond_a0

    .line 865
    invoke-virtual {v5, v4}, Landroid/support/v4/util/ArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 866
    if-eqz v0, :cond_95

    .line 867
    invoke-virtual {v5, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 868
    if-eqz v1, :cond_95

    iget-object v2, v1, Landroid/support/transition/TransitionPort$AnimationInfo;->a:Landroid/view/View;

    if-eqz v2, :cond_95

    iget-object v2, v1, Landroid/support/transition/TransitionPort$AnimationInfo;->a:Landroid/view/View;

    .line 869
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v2, v3, :cond_95

    .line 870
    const/4 v2, 0x0

    .line 871
    iget-object v6, v1, Landroid/support/transition/TransitionPort$AnimationInfo;->c:Landroid/support/transition/TransitionValues;

    .line 872
    iget-object v3, v1, Landroid/support/transition/TransitionPort$AnimationInfo;->a:Landroid/view/View;

    .line 873
    iget-object v1, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    if-eqz v1, :cond_9a

    iget-object v1, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    .line 874
    invoke-virtual {v1, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 875
    :goto_42
    if-nez v1, :cond_ad

    .line 876
    iget-object v1, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    move-object v3, v1

    .line 878
    :goto_53
    if-eqz v6, :cond_ab

    .line 881
    if-eqz v3, :cond_ab

    .line 882
    iget-object v1, v6, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_61
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 883
    iget-object v8, v6, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 884
    iget-object v9, v3, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 885
    if-eqz v8, :cond_61

    if-eqz v1, :cond_61

    .line 886
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 887
    const/4 v1, 0x1

    .line 898
    :goto_84
    if-eqz v1, :cond_95

    .line 899
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_92

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 903
    :cond_92
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 864
    :cond_95
    :goto_95
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_b

    .line 874
    :cond_9a
    const/4 v1, 0x0

    goto :goto_42

    .line 908
    :cond_9c
    invoke-virtual {v5, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    .line 915
    :cond_a0
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/transition/TransitionPort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    .line 916
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->e()V

    .line 917
    return-void

    :cond_ab
    move v1, v2

    goto :goto_84

    :cond_ad
    move-object v3, v1

    goto :goto_53
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .registers 20

    .prologue
    .line 183
    new-instance v7, Landroid/support/v4/util/ArrayMap;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v7, v2}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 185
    new-instance v8, Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    .line 186
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v8, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 187
    const/4 v2, 0x0

    :goto_17
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 188
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 189
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 191
    :cond_37
    new-instance v9, Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    .line 192
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v2

    invoke-direct {v9, v2}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 193
    const/4 v2, 0x0

    :goto_45
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 194
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LongSparseArray;->b(I)J

    move-result-wide v4

    .line 195
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LongSparseArray;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v4, v5, v3}, Landroid/support/v4/util/LongSparseArray;->b(JLjava/lang/Object;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 199
    :cond_65
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 201
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7b
    :goto_7b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_140

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 203
    const/4 v4, 0x0

    .line 204
    const/4 v3, 0x0

    .line 205
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/ListView;

    if-eqz v5, :cond_92

    .line 206
    const/4 v3, 0x1

    .line 208
    :cond_92
    if-nez v3, :cond_113

    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v13

    .line 210
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d7

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    .line 211
    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    move-object v5, v3

    .line 212
    :goto_ad
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e3

    .line 213
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 214
    invoke-virtual {v7, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_c4
    :goto_c4
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 228
    int-to-long v14, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v15}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 229
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 211
    :cond_d7
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    move-object v5, v3

    goto :goto_ad

    .line 215
    :cond_e3
    const/4 v3, -0x1

    if-eq v13, v3, :cond_2fb

    .line 216
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 217
    const/4 v6, 0x0

    .line 218
    invoke-virtual {v7}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_f9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v15

    if-ne v15, v13, :cond_2f8

    :goto_10b
    move-object v6, v4

    .line 222
    goto :goto_f9

    .line 223
    :cond_10d
    if-eqz v6, :cond_c4

    .line 224
    invoke-virtual {v7, v6}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    .line 233
    :cond_113
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 234
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 235
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 236
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v14

    .line 237
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v14, v15}, Landroid/support/v4/util/LongSparseArray;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 238
    invoke-virtual {v9, v14, v15}, Landroid/support/v4/util/LongSparseArray;->c(J)V

    .line 240
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    .line 245
    :cond_140
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v5

    .line 246
    const/4 v2, 0x0

    move v4, v2

    :goto_14a
    if-ge v4, v5, :cond_17e

    .line 247
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v4}, Landroid/support/v4/util/LongSparseArray;->b(I)J

    move-result-wide v12

    .line 248
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 249
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v12, v13}, Landroid/support/v4/util/LongSparseArray;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 250
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v12, v13}, Landroid/support/v4/util/LongSparseArray;->a(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 251
    invoke-virtual {v9, v12, v13}, Landroid/support/v4/util/LongSparseArray;->c(J)V

    .line 252
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_17a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_14a

    .line 257
    :cond_17e
    invoke-virtual {v7}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_186
    :goto_186
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 258
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    .line 259
    int-to-long v12, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 260
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    .line 261
    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 262
    :goto_1b3
    invoke-virtual {v7, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 263
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 264
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 261
    :cond_1c3
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    goto :goto_1b3

    .line 268
    :cond_1ce
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 269
    const/4 v2, 0x0

    move v4, v2

    :goto_1d4
    if-ge v4, v5, :cond_1fe

    .line 270
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 271
    const/4 v2, 0x0

    int-to-long v6, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Landroid/support/transition/TransitionPort;->a(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 272
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 273
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 274
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1fa
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1d4

    .line 278
    :cond_1fe
    invoke-virtual {v9}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v5

    .line 279
    const/4 v2, 0x0

    move v4, v2

    :goto_204
    if-ge v4, v5, :cond_224

    .line 280
    invoke-virtual {v9, v4}, Landroid/support/v4/util/LongSparseArray;->b(I)J

    move-result-wide v6

    .line 282
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/util/LongSparseArray;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 283
    invoke-virtual {v9, v6, v7}, Landroid/support/v4/util/LongSparseArray;->a(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 284
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_204

    .line 287
    :cond_224
    invoke-static {}, Landroid/support/transition/TransitionPort;->l()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    .line 288
    const/4 v2, 0x0

    move v4, v2

    :goto_22a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2f1

    .line 289
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 290
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 292
    if-nez v2, :cond_240

    if-eqz v3, :cond_2e3

    .line 293
    :cond_240
    if-eqz v2, :cond_248

    invoke-virtual {v2, v3}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e3

    .line 313
    :cond_248
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    .line 314
    if-eqz v6, :cond_2e3

    .line 317
    const/4 v5, 0x0

    .line 318
    if-eqz v3, :cond_2ec

    .line 319
    iget-object v7, v3, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->a()[Ljava/lang/String;

    move-result-object v9

    .line 321
    if-eqz v7, :cond_2f5

    if-eqz v9, :cond_2f5

    array-length v2, v9

    if-lez v2, :cond_2f5

    .line 322
    new-instance v5, Landroid/support/transition/TransitionValues;

    invoke-direct {v5}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 323
    iput-object v7, v5, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 324
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 325
    if-eqz v2, :cond_28b

    .line 326
    const/4 v3, 0x0

    :goto_276
    array-length v12, v9

    if-ge v3, v12, :cond_28b

    .line 327
    iget-object v12, v5, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    aget-object v13, v9, v3

    iget-object v14, v2, Landroid/support/transition/TransitionValues;->a:Ljava/util/Map;

    aget-object v15, v9, v3

    .line 328
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 327
    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_276

    .line 331
    :cond_28b
    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v9

    .line 332
    const/4 v2, 0x0

    move v3, v2

    :goto_291
    if-ge v3, v9, :cond_2f2

    .line 333
    invoke-virtual {v8, v3}, Landroid/support/v4/util/ArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 334
    invoke-virtual {v8, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 335
    iget-object v12, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->c:Landroid/support/transition/TransitionValues;

    if-eqz v12, :cond_2e8

    iget-object v12, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->a:Landroid/view/View;

    if-ne v12, v7, :cond_2e8

    iget-object v12, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->b:Ljava/lang/String;

    if-nez v12, :cond_2b1

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->k()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2bd

    :cond_2b1
    iget-object v12, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->b:Ljava/lang/String;

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->k()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e8

    .line 338
    :cond_2bd
    iget-object v2, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->c:Landroid/support/transition/TransitionValues;

    invoke-virtual {v2, v5}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e8

    .line 340
    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v5

    :goto_2c8
    move-object v6, v3

    move-object v3, v7

    .line 349
    :goto_2ca
    if-eqz v6, :cond_2e3

    .line 350
    new-instance v5, Landroid/support/transition/TransitionPort$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->k()Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-static/range {p1 .. p1}, Landroid/support/transition/WindowIdPort;->a(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v9

    invoke-direct {v5, v3, v7, v9, v2}, Landroid/support/transition/TransitionPort$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/WindowIdPort;Landroid/support/transition/TransitionValues;)V

    .line 352
    invoke-virtual {v8, v6, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/TransitionPort;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2e3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_22a

    .line 332
    :cond_2e8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_291

    .line 347
    :cond_2ec
    iget-object v2, v2, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    move-object v3, v2

    move-object v2, v5

    goto :goto_2ca

    .line 359
    :cond_2f1
    return-void

    :cond_2f2
    move-object v2, v5

    move-object v3, v6

    goto :goto_2c8

    :cond_2f5
    move-object v2, v5

    move-object v3, v6

    goto :goto_2c8

    :cond_2f8
    move-object v4, v6

    goto/16 :goto_10b

    :cond_2fb
    move-object v3, v4

    goto/16 :goto_c4
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 603
    invoke-virtual {p0, p2}, Landroid/support/transition/TransitionPort;->a(Z)V

    .line 604
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ac

    .line 605
    :cond_14
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6e

    move v1, v2

    .line 606
    :goto_1d
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6e

    .line 607
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 608
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 609
    if-eqz v3, :cond_55

    .line 610
    new-instance v4, Landroid/support/transition/TransitionValues;

    invoke-direct {v4}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 611
    iput-object v3, v4, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 612
    if-eqz p2, :cond_59

    .line 613
    invoke-virtual {p0, v4}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionValues;)V

    .line 617
    :goto_43
    if-eqz p2, :cond_5d

    .line 618
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    if-ltz v0, :cond_55

    .line 620
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 606
    :cond_55
    :goto_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 615
    :cond_59
    invoke-virtual {p0, v4}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionValues;)V

    goto :goto_43

    .line 623
    :cond_5d
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    if-ltz v0, :cond_55

    .line 625
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_55

    .line 631
    :cond_6e
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_af

    .line 632
    :goto_76
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_af

    .line 633
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 634
    if-eqz v0, :cond_9d

    .line 635
    new-instance v1, Landroid/support/transition/TransitionValues;

    invoke-direct {v1}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 636
    iput-object v0, v1, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 637
    if-eqz p2, :cond_a0

    .line 638
    invoke-virtual {p0, v1}, Landroid/support/transition/TransitionPort;->a(Landroid/support/transition/TransitionValues;)V

    .line 642
    :goto_94
    if-eqz p2, :cond_a4

    .line 643
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_9d
    :goto_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 640
    :cond_a0
    invoke-virtual {p0, v1}, Landroid/support/transition/TransitionPort;->b(Landroid/support/transition/TransitionValues;)V

    goto :goto_94

    .line 645
    :cond_a4
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 651
    :cond_ac
    invoke-direct {p0, p1, p2}, Landroid/support/transition/TransitionPort;->d(Landroid/view/View;Z)V

    .line 653
    :cond_af
    return-void
.end method

.method a(Z)V
    .registers 3

    .prologue
    .line 661
    if-eqz p1, :cond_18

    .line 662
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 663
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 664
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->c()V

    .line 670
    :goto_17
    return-void

    .line 666
    :cond_18
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 667
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 668
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->c()V

    goto :goto_17
.end method

.method a(Landroid/view/View;J)Z
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->i:Ljava/util/ArrayList;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 404
    :cond_13
    :goto_13
    return v2

    .line 375
    :cond_14
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 378
    :cond_20
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    .line 379
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 380
    :goto_2d
    if-ge v1, v4, :cond_41

    .line 381
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 382
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 380
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 387
    :cond_41
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_53

    move v2, v3

    .line 388
    goto :goto_13

    .line 390
    :cond_53
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7b

    move v1, v2

    .line 391
    :goto_5c
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7b

    .line 392
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v4, p2

    if-nez v0, :cond_77

    move v2, v3

    .line 393
    goto :goto_13

    .line 391
    :cond_77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5c

    .line 397
    :cond_7b
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    move v0, v2

    .line 398
    :goto_86
    iget-object v1, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 399
    iget-object v1, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_99

    move v2, v3

    .line 400
    goto/16 :goto_13

    .line 398
    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_86
.end method

.method public a()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 130
    iget-wide v0, p0, Landroid/support/transition/TransitionPort;->e:J

    return-wide v0
.end method

.method public b(I)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 466
    if-lez p1, :cond_b

    .line 467
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 469
    :cond_b
    return-object p0
.end method

.method public b(IZ)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->l:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->l:Ljava/util/ArrayList;

    .line 480
    return-object p0
.end method

.method public b(J)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 143
    iput-wide p1, p0, Landroid/support/transition/TransitionPort;->d:J

    .line 144
    return-object p0
.end method

.method public b(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 1057
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1064
    :cond_4
    :goto_4
    return-object p0

    .line 1060
    :cond_5
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public b(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 580
    if-eqz p1, :cond_7

    .line 581
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 583
    :cond_7
    return-object p0
.end method

.method public b(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->m:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->m:Ljava/util/ArrayList;

    .line 505
    return-object p0
.end method

.method public b(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->n:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->a(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->n:Ljava/util/ArrayList;

    .line 530
    return-object p0
.end method

.method public abstract b(Landroid/support/transition/TransitionValues;)V
.end method

.method public c()J
    .registers 3

    .prologue
    .line 139
    iget-wide v0, p0, Landroid/support/transition/TransitionPort;->d:J

    return-wide v0
.end method

.method public c(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .registers 7

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->o:Landroid/support/transition/TransitionSetPort;

    if-eqz v0, :cond_b

    .line 769
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->o:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSetPort;->c(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    .line 787
    :cond_a
    :goto_a
    return-object v0

    .line 771
    :cond_b
    if-eqz p2, :cond_49

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    move-object v1, v0

    .line 772
    :goto_10
    iget-object v0, v1, Landroid/support/transition/TransitionValuesMaps;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionValues;

    .line 773
    if-nez v0, :cond_a

    .line 774
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 775
    if-ltz v2, :cond_28

    .line 776
    iget-object v0, v1, Landroid/support/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionValues;

    .line 778
    :cond_28
    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_a

    .line 779
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 780
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 781
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 782
    iget-object v0, v1, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionValues;

    goto :goto_a

    .line 771
    :cond_49
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    move-object v1, v0

    goto :goto_10
.end method

.method public c(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 799
    iget-boolean v0, p0, Landroid/support/transition/TransitionPort;->x:Z

    if-nez v0, :cond_60

    .line 800
    invoke-static {}, Landroid/support/transition/TransitionPort;->l()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    .line 801
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 802
    invoke-static {p1}, Landroid/support/transition/WindowIdPort;->a(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v3

    .line 803
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_13
    if-ltz v1, :cond_34

    .line 804
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 805
    iget-object v4, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->a:Landroid/view/View;

    if-eqz v4, :cond_30

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->d:Landroid/support/transition/WindowIdPort;

    invoke-virtual {v3, v0}, Landroid/support/transition/WindowIdPort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 806
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 807
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 803
    :cond_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_13

    .line 810
    :cond_34
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 811
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    .line 812
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 813
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 814
    const/4 v1, 0x0

    move v2, v1

    :goto_4e
    if-ge v2, v3, :cond_5d

    .line 815
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v1, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->b(Landroid/support/transition/TransitionPort;)V

    .line 814
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4e

    .line 818
    :cond_5d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionPort;->s:Z

    .line 820
    :cond_60
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->j()Landroid/support/transition/TransitionPort;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->f:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 831
    iget-boolean v0, p0, Landroid/support/transition/TransitionPort;->s:Z

    if-eqz v0, :cond_63

    .line 832
    iget-boolean v0, p0, Landroid/support/transition/TransitionPort;->x:Z

    if-nez v0, :cond_61

    .line 833
    invoke-static {}, Landroid/support/transition/TransitionPort;->l()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    .line 834
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 835
    invoke-static {p1}, Landroid/support/transition/WindowIdPort;->a(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v4

    .line 836
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_18
    if-ltz v1, :cond_39

    .line 837
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 838
    iget-object v5, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->a:Landroid/view/View;

    if-eqz v5, :cond_35

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->d:Landroid/support/transition/WindowIdPort;

    invoke-virtual {v4, v0}, Landroid/support/transition/WindowIdPort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 839
    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 840
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 836
    :cond_35
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_18

    .line 843
    :cond_39
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_61

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 844
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    .line 845
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 846
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 847
    :goto_52
    if-ge v2, v4, :cond_61

    .line 848
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v1, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->c(Landroid/support/transition/TransitionPort;)V

    .line 847
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_52

    .line 852
    :cond_61
    iput-boolean v3, p0, Landroid/support/transition/TransitionPort;->s:Z

    .line 854
    :cond_63
    return-void
.end method

.method protected e()V
    .registers 5

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->h()V

    .line 419
    invoke-static {}, Landroid/support/transition/TransitionPort;->l()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 421
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 425
    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 426
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->h()V

    .line 427
    invoke-direct {p0, v0, v1}, Landroid/support/transition/TransitionPort;->a(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_d

    .line 430
    :cond_26
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 431
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->i()V

    .line 432
    return-void
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected h()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 963
    iget v0, p0, Landroid/support/transition/TransitionPort;->r:I

    if-nez v0, :cond_2f

    .line 964
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 965
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    .line 966
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 967
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 968
    :goto_1e
    if-ge v2, v4, :cond_2d

    .line 969
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v1, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->d(Landroid/support/transition/TransitionPort;)V

    .line 968
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e

    .line 972
    :cond_2d
    iput-boolean v3, p0, Landroid/support/transition/TransitionPort;->x:Z

    .line 974
    :cond_2f
    iget v0, p0, Landroid/support/transition/TransitionPort;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/TransitionPort;->r:I

    .line 975
    return-void
.end method

.method protected i()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 990
    iget v0, p0, Landroid/support/transition/TransitionPort;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/TransitionPort;->r:I

    .line 991
    iget v0, p0, Landroid/support/transition/TransitionPort;->r:I

    if-nez v0, :cond_6a

    .line 992
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 993
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->t:Ljava/util/ArrayList;

    .line 994
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 995
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 996
    :goto_24
    if-ge v3, v4, :cond_33

    .line 997
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v1, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->a(Landroid/support/transition/TransitionPort;)V

    .line 996
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_24

    :cond_33
    move v1, v2

    .line 1000
    :goto_34
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v0

    if-ge v1, v0, :cond_4e

    .line 1001
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionValues;

    .line 1002
    iget-object v0, v0, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 1000
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    .line 1007
    :cond_4e
    :goto_4e
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->b()I

    move-result v0

    if-ge v2, v0, :cond_67

    .line 1008
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->c:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LongSparseArray;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionValues;

    .line 1009
    iget-object v0, v0, Landroid/support/transition/TransitionValues;->b:Landroid/view/View;

    .line 1007
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1014
    :cond_67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionPort;->x:Z

    .line 1016
    :cond_6a
    return-void
.end method

.method public j()Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 1083
    const/4 v1, 0x0

    .line 1085
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1d

    .line 1086
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/transition/TransitionPort;->u:Ljava/util/ArrayList;

    .line 1087
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, v0, Landroid/support/transition/TransitionPort;->c:Landroid/support/transition/TransitionValuesMaps;

    .line 1088
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, v0, Landroid/support/transition/TransitionPort;->w:Landroid/support/transition/TransitionValuesMaps;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1c} :catch_20

    .line 1092
    :goto_1c
    return-object v0

    .line 1089
    :catch_1d
    move-exception v0

    move-object v0, v1

    goto :goto_1c

    :catch_20
    move-exception v1

    goto :goto_1c
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1078
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionPort;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
